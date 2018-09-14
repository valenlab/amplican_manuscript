rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(amplican)

fdir <- normalizePath("./hdr")

comb <- paste0(rep(c(0, 100, 200), each = 3), "mut_",
               rep(c(0, 30, 100), times = 3), "cedited_",
               c(300, 270, 200, 200, 170, 100, 100, 70, 0), "wt_")
fcomb <- folder_comb <- paste0(comb,
                               rep(c(1, 2, 3), each = 9), "freq_150readlen")

levels <- gsub("freq", "", gsub(".*_([0-9]+freq).*", "\\1", fcomb))
library(BiocParallel)
multicoreParam <- MulticoreParam(workers = 3)
register(multicoreParam)

for (i in seq_along(fcomb)) { # change paths to the fastq files
  fdir <- normalizePath("~/Projects/amplican_manuscript/analysis/hdr")
  this_r <- file.path(fdir, "simulation", "amplican_results", fcomb[i])
  dir.create(this_r)

  this_c <- file.path(fdir, paste0("config_merged_", levels[i],".csv"))
  config <- fread(this_c)
  config$V3 <- paste0(config$V1, "_", fcomb[i], "_sim1.fq")
  config$V4 <- paste0(config$V1, "_", fcomb[i], "_sim2.fq")
  fwrite(config, this_c)

  amplicanPipeline(config = this_c,
                   fastq_folder = file.path(fdir, "simulation"),
                   results_folder = this_r,
                   use_parallel = TRUE,
                   knit_reports = FALSE)
}
