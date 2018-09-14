rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(ggplot2)
library(reshape2)
library(data.table)

setwd("~/Projects/amplican_manuscript/analysis/")
thresh <- c(0, 0.01)
for (t in thresh) {
  f <- list.files(paste0("./precision/results_", t, "/"))
  
  df <- c()
  for (w in seq_along(f)) {
    this_r <- fread(file.path(paste0("./precision/results_", t, "/"), f[w], "config_summary.csv"))
    df <- rbind(df, this_r$Reads_Edited / this_r$Reads_Filtered * 100)
  }
  
  df <- as.data.frame(df)
  df$Reads <- as.numeric(sub(".*_", "", f))
  df$Real_Editing <- 1/as.numeric(sub(".*_", "", f)) * 100
  colnames(df) <- c("Edited", "Control", "# of reads", "True editing efficiency")
  fwrite(df, paste0("../figures/precision_table_", t, ".csv"))
}



