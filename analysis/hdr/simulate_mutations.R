rm(list=ls(all = TRUE))
gc(reset=TRUE)

library("GenomicRanges")
library("Biostrings")
library("rtracklayer")
library(BSgenome.Drerio.UCSC.danRer7)

danRer7 <- BSgenome.Drerio.UCSC.danRer7

randACTG <- function(width) {
  ins <- sample(c("A","C","T","G"), width, replace = TRUE)
  paste0(ins, collapse = "")
}

deleteNucleotides <- function(original, position, l = 10){
    y <- IRanges(position, width = l)
    result <- DNAString(original)[setdiff(disjoin(c(y, IRanges(1, nchar(original)))), y)]
    as.character(result)
}

insertNucleotides <- function(original, position, l = 10){
  ins <- sample(c("A","C","T","G"), l, replace = TRUE)
  ins <- paste0(ins, collapse = "")
  rngs <- IRanges(c(1, position + 1), end = c(position, nchar(original)))
  sqs <- as.character(Views(original, rngs))
  result <- DNAString(paste0(c(sqs[1], ins, sqs[2]), collapse = ""))
  as.character(result)
}

mutateNucleotides <- function(original, position, l = 5){
  mutate <- position:(position + l - 1)
  nucs <- strsplit(as.character(original),"")[[1]]
  replace_nucs <- list("A" = c("C","G","T"), "C" = c("A","G","T"),
                       "T" = c("A","C","G"), "G" = c("A","C","T"))
  replace_idx <- sample(c(1,2,3), l, replace = TRUE)
  replace_idx <- replace_idx + seq(0, 3*(l-1), by = 3)
  new_nucs <- unlist(replace_nucs[nucs[mutate]])[replace_idx]
  nucs[mutate] <- new_nucs
  paste0(nucs, collapse = "")
}

set.seed(42)

read_lengths <- 150 + 100 # for deletions
read_lengths_illumina <- read_lengths - 100

amplicons <- read.table("./idx/Shah_cut_sites.txt", sep = "\t",
                        stringsAsFactors = FALSE)
colnames(amplicons) <- c("name","original","target_loc")
amplicons[,"target_loc"] <- as.integer(amplicons[,"target_loc"])
amplicons <- amplicons[1:20,]

# Get guides for ampliconDIVider
guides_loc <- rtracklayer::import("./idx/shah_guides.bed")
guides_loc <- guides_loc[match(amplicons$name, guides_loc$name)]
guides <- guides_loc + 5

freqs <- read.table("./idx/Shah_mutation_weights.txt", sep = "\t")
# Set a low value for large indels
freqs$x[freqs$Variant > 10] <- 1e-10
freqs$x <- freqs$x/sum(freqs$x)

# get guideRNA locations + 5 for CRISPRPooled
guide <- as.character(getSeq(danRer7, guides_loc))

# get new amplicons with centered guides
extra_bases <- ceiling((read_lengths - 23 - 20 - 20) / 2)
ampl_start <- start(guides_loc) - 20 - extra_bases
ampl_end <- end(guides_loc) + 20 + extra_bases + 1
ampl <- guides_loc
start(ampl) <- ampl_start
end(ampl) <- ampl_end
ampl <- getSeq(danRer7, ampl)
ampl_target_loc <- 20 + extra_bases + 17

# three categories of HDR, donor to amplicon are:
# mm only
# ins only
# deletion only
levels <- 1:3
donor <- list()
ampl_sizes <- floor(seq(5, 70, length.out = 20))
donor[[1]] <- mapply(mutateNucleotides, ampl, rep(ampl_target_loc, 20), ampl_sizes)
donor[[2]] <- mapply(insertNucleotides, ampl, rep(ampl_target_loc, 20), ampl_sizes)
donor[[3]] <- mapply(deleteNucleotides, ampl, rep(ampl_target_loc, 20), ampl_sizes)

# mix in some crispr editing at different levels 0/10/33

for (i in levels) {
  amplicon_inf <- paste(amplicons$name, as.character(ampl), 
                        guide, as.character(donor[[i]]), sep = "\t", collapse = "\n")
  cat(amplicon_inf, file = paste0("./hdr/simulation/merged/crispresso_pooled_amplicons_", i, ".txt"))
}

if (!all(nchar(ampl) > read_lengths)) stop("sizes!")

amplicons <- data.frame(name = as.character(amplicons$name),
                        original = as.character(ampl),
                        target_loc = ampl_target_loc)
# make amplican configs file
ampl_conf <- data.table::fread("./hdr/config_merged.csv")
ampl_conf$V11 <- paste0(
  tolower(substr(ampl, 1, 20 + extra_bases)),
  toupper(substr(ampl, 20 + extra_bases + 1, 20 + extra_bases + 23)),
  tolower(substr(ampl, 20 + extra_bases + 23 + 1, nchar(ampl))))
ampl_conf$V7 <- guide
ampl_conf$V8 <- toupper(substr(ampl, 1, 20))
ampl_conf$V9 <- toupper(reverseComplement(DNAStringSet(
  substr(ampl, nchar(ampl) - 19, nchar(ampl)))))

for (i in levels) {
  ampl_conf$donor <- as.character(donor[[i]])
  data.table::fwrite(ampl_conf, paste0("./hdr/config_merged_", i, ".csv"))
}

sample_seqs <- function(n_mut, n_crispr, n_original, n_freq, amplicons,
                        out_dir, sim_file, nvars = 10, crispresso_file =  NA,
                        read_len = read_lengths_illumina) {
  for (i in 1:nrow(amplicons)) {
    a_rw <- amplicons[i, ]
    original <- DNAString(a_rw$original)
    target_loc <- as.integer(a_rw["target_loc"])
    gd_name <- as.character(a_rw$name)
    guide <- substr(original, target_loc-17, target_loc + 5)

    new_seqs <- rep(as.character(donor[[n_freq]][i]), n_mut)
    out_fname <- file.path(out_dir, sprintf("%s_%smut_%scedited_%swt_%sfreq_%sreadlen.fa",
                  gd_name, n_mut, n_crispr, n_original, n_freq, read_len))
    
    subsamp <- sample(1:nrow(freqs), nvars, prob = freqs$x)
    row_idxs <- sample(c(1:nrow(freqs))[subsamp], n_crispr,
                       prob = freqs$x[subsamp], replace = TRUE)
    crispr_edits <- lapply(row_idxs, function(i){
      rw <- freqs[i,]
      if (rw$var_type == "D") func <- deleteNucleotides
      if (rw$var_type == "I") func <- insertNucleotides
      new_seq <-  func(original, ampl_target_loc + rw$Location, rw$Variant)
      new_seq
    })
    
    result <- c(new_seqs, unlist(crispr_edits), replicate(n_original, original))
    result_names <- c(rep(">var", n_mut),
                      rep(">crispr_edited", n_crispr),
                      rep(">original", n_original))

    print(sprintf("Length HDR: %s Length crispr: %s Length unmutated: %s",
          length(new_seqs), n_crispr, n_original))
    stopifnot(length(result_names) == (length(new_seqs) + n_crispr + n_original))

    result_names <- paste(result_names,
                          c(seq_len(n_mut), 
                            seq_len(n_crispr),
                            seq_len(n_original)), sep = "_")

    new_seqs <- paste(result_names, sapply(result, as.character), sep = "\n")
    new_seqs <- paste0(new_seqs, collapse = "\n")
    print(sprintf("Writing sequences to: %s", out_fname))
    cat(new_seqs, file = out_fname)

    # art_illumina command with seed = 30
    sim_template <- "art_illumina -amp -rs 30 -f 10 -l %s -p -ss MSv1 -na -i %s -o %s\n"
    cat(sprintf(sim_template, read_len, out_fname, gsub(".fa", "_sim", out_fname)),
        file = sim_file, append = TRUE)

    # Commands for CRISPResso
    f1 <- gsub(".fa", "_sim1.fq", out_fname)
    f2 <- gsub(".fa", "_sim2.fq", out_fname)
    crispresso_dir <- "crispresso"
    crispresso_template <- "CRISPResso -r1 %s -r2 %s -a %s -g %s -e %s -o %s -w 5\n"
    cat(sprintf(crispresso_template, f1, f2, original, guide, 
                as.character(donor[[f]][i]), crispresso_dir),
        file = crispresso_file, append = TRUE)
  }
}

sim_cmds <- "./hdr/simulation_commands.sh"
crispresso_cmds <- "./hdr/crispresso_simulation_commands.sh"

for (f in levels){
  # 0% efficient HDR 0% crispr
  sample_seqs(0, 0, 300, f, amplicons, "./hdr/simulation",
              sim_file = sim_cmds, crispresso_file = crispresso_cmds)
  
  # 0% efficient HDR 10% crispr
  sample_seqs(0, 30, 270, f, amplicons, "./hdr/simulation",
              sim_file = sim_cmds, crispresso_file = crispresso_cmds)
  
  # 0% efficient HDR 33% crispr
  sample_seqs(0, 100, 200, f, amplicons, "./hdr/simulation",
              sim_file = sim_cmds, crispresso_file = crispresso_cmds)

  # 33% efficient HDR 0% crispr
  sample_seqs(100, 0, 200, f, amplicons, "./hdr/simulation",
              sim_file = sim_cmds, crispresso_file = crispresso_cmds)
  
  # 33% efficient HDR 10% crispr
  sample_seqs(100, 30, 170, f, amplicons, "./hdr/simulation",
              sim_file = sim_cmds, crispresso_file = crispresso_cmds)
  
  # 33% efficient HDR 33% crispr
  sample_seqs(100, 100, 100, f, amplicons, "./hdr/simulation",
              sim_file = sim_cmds, crispresso_file = crispresso_cmds)

  # 66% efficient HDR 0% crispr
  sample_seqs(200, 0, 100, f, amplicons, "./hdr/simulation",
              sim_file = sim_cmds, crispresso_file = crispresso_cmds)
  
  # 66% efficient HDR 10% crispr
  sample_seqs(200, 30, 70, f, amplicons, "./hdr/simulation",
              sim_file = sim_cmds, crispresso_file = crispresso_cmds)
  
  # 66% efficient HDR 33% crispr
  sample_seqs(200, 100, 0, f, amplicons, "./hdr/simulation",
              sim_file = sim_cmds, crispresso_file = crispresso_cmds)
}

cat("\n\nmv crispresso/* ./hdr/simulation/crispresso; rmdir crispresso\n",
    file = crispresso_cmds, append = TRUE)
