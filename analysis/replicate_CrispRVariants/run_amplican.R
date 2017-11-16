rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(amplican)

fdir <- normalizePath("./replicate_CrispRVariants")
this_c <- file.path(fdir, "config_merged.csv")
fcomb <- folder_comb <- paste0(rep(c(0, 100, 200, 270), each = 3), "mut_",
                               rep(c(300, 200, 100, 30), each = 3), "wt_",
                               rep(c(0, 33, 100), 4), "offtarget_200readlen")
library(BiocParallel)
multicoreParam <- MulticoreParam(workers = 4)
register(multicoreParam)

for (i in seq_along(fcomb)) { # change paths to the fastq files
  this_r <- file.path(fdir, "simulation", "amplican_results", fcomb[i])
  dir.create(this_r)

  config <- fread(this_c)
  config$V3 <- paste0(config$V1, "_", fcomb[i], "_sim1.fq")
  config$V4 <- paste0(config$V1, "_", fcomb[i], "_sim2.fq")
  fwrite(config, this_c)

  amplicanPipeline(config = this_c,
                   fastq_folder = file.path(fdir, "simulation"),
                   results_folder = this_r,
                   use_parallel = TRUE)
}



