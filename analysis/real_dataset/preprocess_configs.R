rm(list=ls(all = TRUE))
gc(reset=TRUE)

library("GenomicRanges")
library("Biostrings")
library("data.table")

setwd("/home/ai/Projects/amplican_manuscript/analysis/")
cfgs <- c("./configs_amplicon_runs/config_MiSeq_run_1_ctr_only.csv",
          "./configs_amplicon_runs/config_MiSeq_run_5_ctr_only.csv",
          "./configs_amplicon_runs/config_MiSeq_run_6_ctr_only.csv",
          "./configs_amplicon_runs/config_MiSeq_run_7_ctr_only.csv",
          "./configs_amplicon_runs/config_MiSeq_run_8_ctr_only.csv",
          "./configs_amplicon_runs/config_MiSeq_run_9_ctr_only.csv",
          "./configs_amplicon_runs/config_MiSeq_run_10_ctr_only.csv")
n <- c("/MiSeq_run1/", "/MiSeq_run5_2013_09_25/", "/MiSeq_run6_2013_11_19/",
       "/MiSeq_run7_2014_01_02/", "/MiSeq_run8_2014_01_30/", "/MiSeq_run9_2014_03_26/",
       "/MiSeq_run10_2014_05_16/")
a <- paste0("run", c(1, 5:10), "_")
l <- mapply(function(cfg_f, fold, nam){
  cf1 <- data.table::fread(cfg_f)
  cf1$Forward_Reads <- paste0(fold, cf1$Forward_Reads)
  cf1$Reverse_Reads <- paste0(fold, cf1$Reverse_Reads)
  cf1$ID <- paste0(nam, cf1$ID)
  cf1$Barcode <- paste0(nam, cf1$Barcode)
  list(cf1)
}, cfgs, n, a)
config <- Reduce(rbind, l)
setDF(config)
# use only forward targets for simplification (not sure how other tools handle this)
# config <- config[!config$Direction, ]
# only for the guides that we can be sure there is one target on the genome
# writeXStringSet(DNAStringSet(unique(config$guideRNA)), "./real_dataset/guides.fa")
# bowtie2 -x /home/ai/Projects/amplican_manuscript/analysis/idx/danRer7.fa -f --no-unal /home/ai/Projects/amplican_manuscript/analysis/real_dataset/guides.fa > /home/ai/Projects/amplican_manuscript/analysis/real_dataset/guides.sam
# sam_to_bam ./real_dataset/guides.sam
library(GenomicAlignments)
param <- ScanBamParam(flag = scanBamFlag(isDuplicate = FALSE,
                                         isSecondaryAlignment = FALSE),
                      reverseComplement = FALSE,
                      tag = "MD",
                      what = c("rname", "qname", "mapq", "seq", "pos"))
guides <- readGAlignments("./real_dataset/guides_sorted.bam", param = param)
g <- as.data.frame(guides)
setDT(g)

# remove guides that map to multiple loci
g <- g[, .(count = .N), by = c("seq", "start", "end")]
to_remove <- g[, .(mappings = .N), by = c("seq")][mappings > 1]
guides <- guides[!mcols(guides)$seq %in% to_remove$seq, ]

# remove guides with mm
# guides <- guides[mcols(guides)$MD == "23" & strand(guides) == "+"]
names(guides) <- mcols(guides)$seq
names(guides)[as.vector(strand(guides) == "-")] <- as.character(
  reverseComplement(DNAStringSet(mcols(guides)$seq[as.vector(strand(guides) == "-")])))
rtracklayer::export.bed(guides, "/home/ai/Projects/amplican_manuscript/analysis/real_dataset/guides.bed")
config <- config[toupper(config$guideRNA) %in% names(guides), ]
config$ID <- gsub("-", "_", config$ID)
config$ID <- gsub("&", "_", config$ID)
fwrite(config, "./real_dataset/amplican_config.csv")
# at this point run split_fastq
# ./real_dataset/split_fastq.sh ./real_dataset/amplican_config.csv /home/ai/Projects/data/amplican/Jamie/ /home/ai/Projects/amplican_manuscript/analysis/real_dataset/data/

