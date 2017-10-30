rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(amplican)

fdir <- normalizePath("./real_offtargets")
this_c <- file.path(fdir, "config_merged.csv")
fcomb <- folder_comb <- paste0(rep(c(0, 100, 200, 270), each = 3), "mut_",
                               rep(c(300, 200, 100, 30), each = 3), "wt_",
                               rep(c(0, 33, 100), 4), "offtarget_150readlen")
freqs <- c(0.1, 0.2, 0.3)

library(BiocParallel)
multicoreParam <- MulticoreParam(workers = 4)
register(multicoreParam)

for (w in seq_along(freqs)) {
for (i in seq_along(fcomb)) { # change paths to the fastq files
  this_r <- file.path(fdir, "simulation_", freqs[w], "amplican_results", fcomb[i])
  dir.create(this_r)

  config <- fread(this_c)
  config$V3 <- paste0(config$V1, "_", fcomb[i], "_sim1.fq")
  config$V4 <- paste0(config$V1, "_", fcomb[i], "_sim2.fq")
  fwrite(config, this_c)

  amplicanPipeline(config = this_c,
                   fastq_folder = file.path(fdir, "simulation_", fcomb[i]),
                   results_folder = this_r,
                   use_parallel = TRUE)
}
}



