rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(amplican)
library(IRanges)
library(data.table)
library(ggplot2)

r_path <- "/media/ai/ValenLab/Projects/data/amplican/Jamie/"
results_folders <- c("MiSeq_run1", 
                     "MiSeq_run5_2013_09_25",
                     "MiSeq_run7_2014_01_02",
                     "MiSeq_run8_2014_01_30",
                     "MiSeq_run10_2014_05_16",
                     "MiSeq_run9_2014_03_26")

# remember to filer experiments that had long spanning deletions
allCtr <- c()
for (i in seq_along(results_folders)) {
  aln <- fread(file.path(r_path, results_folders[i], "results", "alignments", "events_filtered_shifted.csv"))
  config <- fread(file.path(r_path, results_folders[i], "results", "config_summary.csv"))
  
  allEvents <- rep(FALSE, length(aln))
  # case can only have cuts that dont extend over the cut region
  for (j in seq_len(dim(config)[1])) {
    zero_point <- amplican:::upperGroups(config$Amplicon[j])
    zero_point <- IRanges(min(start(zero_point)), max(end(zero_point)))
    if ((config$fwdPrPosEnd[j] + 10) < (start(zero_point) - 15)) {
      left <- IRanges(config$fwdPrPosEnd[j] + 10,
                      start(zero_point) - 15)
      left <- IRanges::shift(left, shift = -1 * start(zero_point)[1])
    } else {
      left <- IRanges()
    }
    if ((end(zero_point) + 10) < (config$rvePrPos[j] - 15)) {
      right <- IRanges(end(zero_point) + 10,
                       config$rvePrPos[j] - 15)
      right <- IRanges::shift(right, shift = -1 * start(zero_point)[1])
    } else {
      right <- IRanges()
    }
    this_j <- aln$seqnames == config$ID[j]
    allEvents[this_j] = IRanges(aln$start[this_j], aln$end[this_j]) %in% right |
      IRanges(aln$start[this_j], aln$end[this_j]) %in% left
  }
  
  # PRIMER DIMERS and regular cas9 events
  aln <- aln[!(aln$type == "deletion" & aln$width >= 10), ]
  
  cfgT <- amplicanSummarize(aln[aln$consensus & !aln$overlaps, ], config)
  x <- cfgT$Reads_Edited[cfgT$Control] * 100 / cfgT$Reads_Filtered[cfgT$Control]
  mean(x[is.finite(x)])
  plot(x)
  
  cfgT$Control <- !cfgT$Control
  aln <- amplicanNormalize(aln, cfgT)
  
  cfgT <- amplicanSummarize(aln[aln$consensus & !aln$overlaps, ], cfgT)
  y <- cfgT$Reads_Edited[!cfgT$Control] * 100 / cfgT$Reads_Filtered[!cfgT$Control]
  mean(y[is.finite(y)])
  plot(y)
  # cfgT$ID[!cfgT$Control][y > 5]
  allCtr <- c(allCtr, y)
}
mean(allCtr[is.finite(allCtr)]) # in %
median(allCtr[is.finite(allCtr)]) # in %
