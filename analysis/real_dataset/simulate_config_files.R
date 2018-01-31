rm(list=ls(all = TRUE))
gc(reset=TRUE)

library("GenomicRanges")
library("Biostrings")

config <- data.table::fread("./real_dataset/amplican_config.csv")
data.table::setDF(config)
# config$Forward_Reads <- paste0(gsub("_sim1", "", tools::file_path_sans_ext(config$Forward_Reads)), "_sim1.fq")
# config$Reverse_Reads <- paste0(gsub("_L001_R2_001_sim2_sim1", "", tools::file_path_sans_ext(config$Reverse_Reads)), "_sim2.fq")
# use only forward targets for simplification (not sure how other tools handle this)
# config <- fread("./real_dataset/config_MiSeq_run_1_with_controls_fwd.csv")
# # writeXStringSet(DNAStringSet(config$guideRNA), "./real_dataset/guides.fa")
# # bowtie2 -x /home/ai/Projects/amplican_manuscript/analysis/idx/danRer7.fa -f --no-unal /home/ai/Projects/amplican_manuscript/analysis/real_dataset/guides.fa > /home/ai/Projects/amplican_manuscript/analysis/real_dataset/guides.sam
# # sam_to_bam
# library(GenomicAlignments)
# param <- ScanBamParam(flag = scanBamFlag(isDuplicate = FALSE,
#                                          isSecondaryAlignment = FALSE),
#                       reverseComplement = FALSE,
#                       tag = "MD",
#                       what = c("mapq", "seq", "pos"))
# guides <- readGAlignments("./real_dataset/guides_sorted.bam", param = param)
# # remove guides with mm
# guides <- guides[mcols(guides)$MD == "23" & strand(guides) == "+"]
# guides <- guides[!duplicated(mcols(guides)$seq)]
# names(guides) <- mcols(guides)$seq
# rtracklayer::export.bed(guides, "/home/ai/Projects/amplican_manuscript/analysis/real_dataset/guides.bed")
# config <- config[config$guideRNA %in% names(guides), ]
# fwrite(config, "./real_dataset/amplican_config.csv")

amplicons <- config[, c("ID", "Amplicon")]
amplicons$target_loc <- start(unlist(IRangesList(lapply(config$Amplicon, amplican:::upperGroups)))) + 17
amplicons$Amplicon <- toupper(amplicons$Amplicon)
colnames(amplicons) <- c("name", "original", "target_loc")
amplicons[,"target_loc"] <- as.integer(amplicons[,"target_loc"])

# Get guides for ampliconDIVider
guides <- rtracklayer::import("./real_dataset/guides.bed")
guides <- guides[match(config$guideRNA, guides$name)]
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
  guide <- substr(original, target_loc-17, target_loc + 5)

  # Commands for CRISPResso
  f1 <- file.path(out_dir, paste0(config$ID[i], "_sim1.fastq"))
  f2 <- file.path(out_dir, paste0(config$ID[i], "_sim2.fastq"))
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
guide <- substr(original, amplicons$target_loc-17, amplicons$target_loc + 5)
amplicon_inf <- paste(amplicons$name, original, guide, sep = "\t", collapse = "\n")
cat(amplicon_inf, file = "./real_dataset/data/merged/crispresso_pooled_amplicons.txt")
cat("\n\nmv crispresso/* ./real_dataset/data/crispresso; rmdir crispresso\n",
    file = crispresso_cmds, append = TRUE)

# crispresso pooled
idx <- rep("./idx/danRer7.fa", 2)
amplicons_f <- c("./real_dataset/data/merged/crispresso_pooled_amplicons_S1.txt",
                 "./real_dataset/data/merged/crispresso_pooled_amplicons_S2.txt")

S1 <- config[!config$Control, ]
S2 <- config[config$Control, ]
amplicon_inf_S1 <- paste(S1$ID, toupper(S1$Amplicon),
                         toupper(S1$guideRNA), sep = "\t", collapse = "\n")
cat(amplicon_inf_S1, file = amplicons_f[1])
amplicon_inf_S2 <- paste(S2$ID, toupper(S2$Amplicon),
                         toupper(S2$guideRNA), sep = "\t", collapse = "\n")
cat(amplicon_inf_S2, file = amplicons_f[2])
pooled_template <- "CRISPRessoPooled -r1 %s -r2 %s -f %s -x %s --name %s -p 4 --window_around_sgrna 5"
cmds <- paste(sprintf(pooled_template,
                      unique(file.path("./real_dataset/data", config$Forward_Reads)),
                      unique(file.path("./real_dataset/data", config$Reverse_Reads)),
                      amplicons_f, idx, c("injected_S1", "uninjected_S2")),
              collapse = "\n")
cat(cmds, file = "./real_dataset/crispresso_pooled_commands.sh")
cat("\n\nmv CRISPRessoPooled_on_* ./real_dataset/data/merged/", file = "./real_dataset/crispresso_pooled_commands.sh", append = TRUE)
