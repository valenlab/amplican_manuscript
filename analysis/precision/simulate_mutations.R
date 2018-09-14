rm(list=ls(all = TRUE))
gc(reset=TRUE)

options(scipen=999)
n_reads <- c(1,
             10,
             100,
             1000,
             10000,
             100000)
setwd("~/Projects/amplican_manuscript/analysis/")

library("GenomicRanges")
library("Biostrings")
library("rtracklayer")
library(BSgenome.Drerio.UCSC.danRer7)

danRer7 <- BSgenome.Drerio.UCSC.danRer7

randACTG <- function(width) {
  ins <- sample(c("A","C","T","G"), width, replace = TRUE)
  paste0(ins, collapse = "")
}

deleteNucleotides <- function(original, original_range, start, width){
    y <- IRanges(start, width = width)
    result <- original[setdiff(disjoin(c(y,original_range)), y)]
    result
}

insertNucleotides <- function(original, original_range, start, width){
  ins <- sample(c("A","C","T","G"), width, replace = TRUE)
  ins <- paste0(ins, collapse = "")
  rngs <- IRanges(c(1,start+1), end = c(start, width(original_range)))
  sqs <- as.character(Views(original, rngs))
  result <- DNAString(paste0(c(sqs[1], ins,sqs[2]), collapse = ""))
  result
}

mutateNucleotides <- function(original, fraction){
  nsample <- floor(fraction*length(original))
  mutate <- sample(c(1:length(original)), nsample)
  nucs <- strsplit(as.character(original),"")[[1]]
  replace_nucs <- list("A" = c("C","G","T"), "C" = c("A","G","T"),
                       "T" = c("A","C","G"), "G" = c("A","C","T"))
  replace_idx <- sample(c(1,2,3), nsample, replace = TRUE)
  replace_idx <- replace_idx + seq(0, 3*(nsample-1), by = 3)
  new_nucs <- unlist(replace_nucs[nucs[mutate]])[replace_idx]
  nucs[mutate] <- new_nucs
  paste0(nucs, collapse = "")
}

set.seed(30)

# amplican config file
write.table(matrix(c(paste0("V", 1:11), "Donor"), ncol = 12),
            file = "./precision/config_merged.csv", append = FALSE, sep = ",",
            row.names = FALSE, col.names = FALSE)

for (w in seq_along(n_reads)) { # iterate over simulations

  freqs <- read.table("./idx/Shah_mutation_weights.txt", sep = "\t")
  # Set a low value for large indels
  freqs$x[freqs$Variant > 10] <- 1e-10
  freqs$x <- freqs$x/sum(freqs$x)

  read_lengths <- 150 + 40 # for deletions
  read_lengths_illumina <- read_lengths - 40

  amplicons <- read.table("./idx/Shah_cut_sites.txt", sep = "\t",
                          stringsAsFactors = FALSE)
  colnames(amplicons) <- c("name","original","target_loc")
  amplicons[,"target_loc"] <- as.integer(amplicons[,"target_loc"])
  amplicons <- amplicons[1:20,]

  # Get guides for ampliconDIVider
  guides_loc <- rtracklayer::import("./idx/shah_guides.bed")
  guides_loc <- guides_loc[match(amplicons$name, guides_loc$name)]
  guides <- guides_loc + 5

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

  if (!all(nchar(ampl) > read_lengths)) stop("sizes!")

  amplicons <- data.frame(name = as.character(amplicons$name),
                          original = as.character(ampl),
                          target_loc = ampl_target_loc)
  ampl_conf <- data.frame(V1 = as.character(amplicons$name),
                          V2 = as.character(amplicons$name),
                          V3 = "", V4 = "",
                          V5 = as.character(amplicons$name),
                          V6 = 0,
                          V7 = guide,
                          V8 = toupper(substr(ampl, 1, 20)),
                          V9 = toupper(reverseComplement(DNAStringSet(substr(ampl, nchar(ampl) - 19, nchar(ampl))))),
                          V10 = 0,
                          V11 = paste0(
                            tolower(substr(ampl, 1, 20 + extra_bases)),
                            toupper(substr(ampl, 20 + extra_bases + 1, 20 + extra_bases + 23)),
                            tolower(substr(ampl, 20 + extra_bases + 23 + 1, nchar(ampl)))),
                          Donor = "")
  n_mut = 1
  n_original = n_reads[w] - n_mut
  out_dir = "./precision/simulated/"
  read_len = 150
  nvars = 10

  for (i in 1) {#:nrow(amplicons)) {
    a_rw <- amplicons[i, ]
    original <- DNAString(a_rw$original)
    target_loc <- as.integer(a_rw["target_loc"])
    gd_name <- as.character(a_rw$name)
    guide <- substr(original, target_loc-17, target_loc + 5)
    original_range <- IRanges(1, length(original))
    amp_loc <- target_loc + freqs$Location - 1
    subsamp <- sample(1:nrow(freqs), nvars, prob = freqs$x)
    row_idxs <- sample(c(1:nrow(freqs))[subsamp], n_mut,
                       prob = freqs$x[subsamp], replace = TRUE)

    subf <- freqs[subsamp,]
    var_labs <- paste(subf$Location, paste0(subf$Variant, subf$var_type), sep = ":")
    var_freqs <- table(factor(row_idxs, levels = subsamp))
    names(var_freqs) <- var_labs

    new_seqs <- lapply(row_idxs, function(i){
      rw <- freqs[i,]
      if (rw$var_type == "D") func <- deleteNucleotides
      if (rw$var_type == "I") func <- insertNucleotides
      new_seq <-  func(original, original_range, amp_loc[i], rw$Variant)
      new_seq
    })
    new_seqs <- DNAStringSet(new_seqs)

    original_seqs <- DNAStringSet(rep(as.character(original), n_original))

    result <- c(new_seqs, original_seqs)
    result_names <- c(rep("var", n_mut), rep("original", n_original))
    result_names <- paste(result_names, c(seq_len(n_mut), seq_len(n_original)), sep = "_")
    names(result) <- result_names

    out_fname <- file.path(out_dir, sprintf("%s_%smut_%swt_%sreadlen.fa",
                                            gd_name, n_mut, n_original, read_len))
    writeXStringSet(result, out_fname)

    sim_file = paste0("./precision/art_commands.sh")

    # art_illumina command with seed = 30
    sim_template <- "art_illumina -amp -rs 30 -f 10 -l %s -p -ss MSv1 -na -i %s -o %s\n"
    cat(sprintf(sim_template, read_len, out_fname, gsub(".fa", "_sim", out_fname)),
        file = sim_file, append = TRUE)

    # control
    result <- c(DNAStringSet(rep(as.character(original), n_mut)), original_seqs)
    names(result) <- paste0(rep("original", n_original + n_mut), "_", seq_len(n_original + n_mut))
    out_fname <- file.path(out_dir, sprintf("%s_%smut_%swt_%sreadlen_ctr.fa",
                                            gd_name, n_mut, n_original, read_len))
    writeXStringSet(result, out_fname)
    cat(sprintf(sim_template, read_len, out_fname, gsub(".fa", "_sim", out_fname)),
        file = sim_file, append = TRUE)

    # amplican df
    this_ampl <- ampl_conf[i, ]
    this_ampl$V1 <- paste0(this_ampl$V1, "_", n_original + n_mut)
    this_ampl$V2 <- paste0(this_ampl$V2, "_", n_original + n_mut)
    this_ampl$V3 <-  basename(gsub("_ctr.fa", "_sim1.fq", out_fname))
    this_ampl$V4 <-  basename(gsub("_ctr.fa", "_sim2.fq", out_fname))
    write.table(this_ampl,
                file = "precision/config_merged.csv", append = TRUE, sep = ",",
                col.names = FALSE, row.names = FALSE)
    this_ampl$V1 <- paste0(this_ampl$V1, "_ctr")
    this_ampl$V2 <- paste0(this_ampl$V2, "_ctr")
    this_ampl$V3 <-  basename(gsub(".fa", "_sim1.fq", out_fname))
    this_ampl$V4 <-  basename(gsub(".fa", "_sim2.fq", out_fname))
    this_ampl$V6 <- 1
    write.table(this_ampl,
                file = "precision/config_merged.csv", append = TRUE, sep = ",",
                col.names = FALSE, row.names = FALSE)
  }
}
