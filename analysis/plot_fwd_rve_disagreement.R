rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(amplican)

# load up experiments on filtered and shifted
setwd("/home/ai/Projects/amplican_manuscript/analysis/")
pdir <- "/home/ai/Projects/data/amplican/Jamie/"

fdir <- c("MiSeq_run1", "MiSeq_run5_2013_09_25", "MiSeq_run6_2013_11_19/", "MiSeq_run9_2014_03_26")
# "MiSeq_run7_2014_01_02/", "MiSeq_run8_2014_01_30",

un_table <- c()
big_ins_table <- c()
for (f in seq_along(fdir)) {
  aln <- fread(file.path(pdir, fdir[f], "results", "alignments",
                         "events_filtered_shifted.csv"))
  cfgT <- fread(file.path(pdir, fdir[f], "results", "config_summary.csv"))
  aln <- amplicanNormalize(aln, cfgT, add = "guideRNA")
  cfgT <- amplicanSummarize(aln, cfgT)

  # list experiments with controls
  exp <- cfgT$ID[!cfgT$Control & cfgT$guideRNA %in% cfgT$guideRNA[cfgT$Control]]
  if (length(exp) == 0) next()

  big_ins <- aln[seqnames %in% exp & type == "insertion" & width > 10, ]
  big_ins <- big_ins[, .(counts = max(counts)), by = c("seqnames", "read_id")]
  big_ins <- big_ins[, .(counts = sum(counts)), by = c("seqnames")]
  big_ins$large_ins <- big_ins$counts * 100 / cfgT$Reads_Filtered[match(big_ins$seqnames, cfgT$ID)]
  big_ins$large_ins_N <- big_ins$counts * 100 / cfgT$Reads_Indel[match(big_ins$seqnames, cfgT$ID)]
  big_ins$guideRNA <- toupper(cfgT$guideRNA[match(big_ins$seqnames, cfgT$ID)])
  big_ins_table <- rbind(big_ins_table, big_ins)

  aln_id <- aln[seqnames %in% exp & type != "mismatch", ]
  if (dim(aln_id)[1] == 0) next()
  aln_id <- aln_id[order(seqnames, read_id, type, start, end, replacement), ]
  aln_id <- aln_id[, `:=` (event_id = as.numeric(seq_len(.N))),
                   by = c("seqnames", "read_id", "strand")]
  aln_id <- data.table::dcast(aln_id, seqnames + read_id + counts + strand ~ event_id,
                              value.var = c("start", "end", "type", "replacement"))
  aln_id$strand <- NULL
  dups <- duplicated(aln_id, by = NULL) # null means use all columns
  aln_id <- aln_id[!read_id %in% aln_id$read_id[dups]]
  aln_id <- aln_id[, .(counts = max(counts)), by = c("seqnames", "read_id")]
  aln_id <- aln_id[, .(unambiguous = sum(counts)), by = "seqnames"]
  aln_id$unambiguous <- aln_id$unambiguous * 100 / cfgT$Reads_Filtered[match(aln_id$seqnames, cfgT$ID)]
  aln_id$guideRNA <- toupper(cfgT$guideRNA[match(aln_id$seqnames, cfgT$ID)])
  un_table <- rbind(un_table, aln_id)
}

library(ggplot2)
library(ggthemes)

p <- ggplot(data = big_ins_table, aes(x = guideRNA, y = large_ins)) +
  geom_boxplot() + geom_boxplot() + geom_jitter(width = 0.2) + coord_flip() +
  ylab("# of reads with insertions larger than 10bp [% of all reads]") +
  xlab("Normalized experiments")

ggplot2::ggsave("../figures/large_insertion_rate.png", p, height = 10)

p <- ggplot(data = big_ins_table, aes(x = guideRNA, y = large_ins_N)) +
  geom_boxplot() + geom_boxplot() + geom_jitter(width = 0.2) + coord_flip() +
  ylab("# of reads with insertions larger than 10bp [% of indels]") +
  xlab("Normalized experiments")

ggplot2::ggsave("../figures/large_insertion_rate_normalized.png", p, height = 10)

p <- ggplot(data = un_table, aes(x = guideRNA, y = unambiguous)) +
  geom_boxplot() + geom_jitter(width = 0.2) + coord_flip() +
  ylab("# of reads with with unambiguous indels [% of all reads]") +
  xlab("Normalized experiments")
ggplot2::ggsave("../figures/unambiguous_rate.png", p, height = 10)
