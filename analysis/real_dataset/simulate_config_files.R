rm(list=ls(all = TRUE))
gc(reset=TRUE)

library("GenomicRanges")
library("Biostrings")
library("data.table")

setwd("/home/ai/Projects/amplican_manuscript/analysis/")
config <- data.table::fread("./real_dataset/amplican_config.csv")
data.table::setDF(config)
config$Forward_Reads <- paste0(config$ID, "_sim1.fq")
config$Reverse_Reads <- paste0(config$ID, "_sim2.fq")
config$Barcode <- paste0(config$ID)
data.table::fwrite(config, "./real_dataset/amplican_config.csv")

guideRNA <- toupper(config$guideRNA)
guideRNA[config$Direction] <- as.character(reverseComplement(DNAStringSet(guideRNA[config$Direction])))
amplicons <- config[, c("ID", "Amplicon")]
temp_a <- IRangesList(lapply(config$Amplicon, function(x) amplican:::upperGroups(x)[1]))
amplicons$target_loc <- start(unlist(temp_a)) + 17
amplicons$Amplicon <- toupper(amplicons$Amplicon)
colnames(amplicons) <- c("name", "original", "target_loc")
amplicons[,"target_loc"] <- as.integer(amplicons[,"target_loc"])

# Get guides for ampliconDIVider
guides <- rtracklayer::import("./real_dataset/guides.bed")
guides <- guides[match(toupper(config$guideRNA), guides$name)]
guides <- guides + 5
adiv_out <- "./real_dataset/amplicondivider_simulation_commands.sh"
cat('cd ../software/ampliconDIVider-master\nsource ampliconDIV_minimal.sh\n',
    file = adiv_out)

sim_cmds <- "./real_dataset/simulation_commands.sh"
crispresso_cmds <- "./real_dataset/crispresso_simulation_commands.sh"
out_dir <- "./real_dataset/data"

for (i in 1:nrow(amplicons)) {
  a_rw <- amplicons[i, ]
  original <- DNAString(a_rw$original)
  target_loc <- as.integer(a_rw["target_loc"])
  gd_name <- a_rw["name"]
  guide <- guideRNA[i]

  # Commands for CRISPResso
  f1 <- file.path(out_dir, paste0(config$ID[i], "_sim1.fq"))
  f2 <- file.path(out_dir, paste0(config$ID[i], "_sim2.fq"))
  crispresso_dir <- "crispresso"
  crispresso_template <- "CRISPResso -r1 %s -r2 %s -a %s -g %s -o %s -w 5\n"
  cat(sprintf(crispresso_template, f1, f2, original, guide, crispresso_dir),
      file = crispresso_cmds, append = TRUE)

  # Commands for ampliconDIVider
  adiv_dir <- "../../analysis/real_dataset/data/amplicondivider"
  adiv_tmp1 <- 'samtools view -hb %s %s > temp.bam'
  adiv_tmp2 <- 'parseBam temp.bam %s %s %s; rm temp.bam'
  adiv_tmp3 <- 'mv frameshift_summary_%s %s\n\n'
  out_fname <- file.path(out_dir, tools::file_path_sans_ext(basename(config$Forward_Reads[i])))

  bam <- file.path(out_dir, paste0(tools::file_path_sans_ext(basename(config$Forward_Reads[i])), "_merged.bam"))
  bam <- gsub("_sim1", "", bam)
  gd <- guides[i]
  gd_rng <- sprintf("%s:%s-%s", seqnames(gd), start(gd)-200, end(gd)+200)
  base <- config$ID[i]
  a1 <- sprintf(adiv_tmp1, file.path("../../analysis/real_dataset/data", basename(bam)), gd_rng)
  a2 <- sprintf(adiv_tmp2, base, start(gd) - 5, end(gd) + 5)
  a3 <- sprintf(adiv_tmp3, base, file.path(adiv_dir, paste0(base, ".txt")))
  cat(paste(a1,a2,a3, sep = "\n"), file = adiv_out, append = TRUE)
}

# Write amplicons and guides into file for CRISPRessoPooled
original <- amplicons$original
amplicon_inf <- paste(amplicons$name, original, guideRNA, sep = "\t", collapse = "\n")
#cat(amplicon_inf, file = "./real_dataset/data/merged/crispresso_pooled_amplicons.txt")
cat("\n\nmv crispresso/* ./real_dataset/data/crispresso; rmdir crispresso\n",
    file = crispresso_cmds, append = TRUE)

# crispresso pooled
idx <- rep("./idx/danRer7.fa", nrow(config))
amplicons_f <- paste0("./real_dataset/data/merged/", config$ID, "_pooled_amplicons.txt")

# do CRISPResso Pooled, but treat each line separately, 
# because they have issues with non-unique amplicons
for (i in 1:nrow(config)) {
  amplicon_inf <- paste(config$ID[i], toupper(config$Amplicon[i]),
                           guideRNA[i], sep = "\t", collapse = "\n")
  cat(amplicon_inf, file = amplicons_f[i])
}
pooled_template <- "CRISPRessoPooled -r1 %s -r2 %s -f %s -x %s --name %s -p 4 --window_around_sgrna 5"
cmds <- paste(sprintf(pooled_template,
                      file.path("./real_dataset/data", config$Forward_Reads),
                      file.path("./real_dataset/data", config$Reverse_Reads),
                      amplicons_f, idx, 
                      config$ID),
              collapse = "\n")
cat(cmds, file = "./real_dataset/crispresso_pooled_commands.sh")
cat("\n\nmv CRISPRessoPooled_on_* ./real_dataset/data/merged/", file = "./real_dataset/crispresso_pooled_commands.sh", append = TRUE)
