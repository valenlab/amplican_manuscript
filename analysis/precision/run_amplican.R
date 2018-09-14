rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(amplican)

setwd("~/Projects/amplican_manuscript/analysis/")
fdir <- normalizePath("./precision")
this_c <- file.path(fdir, "config_merged.csv")
this_c <- fread(this_c)

# analyze each of the pairs as separate amplican runs as this
# is too heavy on the memory to have experiment with 10milions of sequences
min_freq <- c(0, 0.01)

for (freq in min_freq) {
  dir.create(file.path(fdir, paste0("results_", freq)), showWarnings = FALSE)
  for (i in 1:(nrow(this_c)/2)) {
    temp_c <- this_c[c(i*2 - 1, i*2), ]
    this_c_temp <- file.path(fdir, "temp_config.csv")
    fwrite(temp_c, this_c_temp)
    dir.create(file.path(fdir, paste0("results_", freq), temp_c$V1[1]), showWarnings = FALSE)
    
    amplicanPipeline(config = this_c_temp,
                     fastq_folder = file.path(fdir, "simulated"),
                     results_folder = file.path(fdir, paste0("results_", freq), temp_c$V1[1]),
                     event_filter = FALSE,
                     min_freq = 0)
  }
}




