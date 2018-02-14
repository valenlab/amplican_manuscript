rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(amplican)
library(BiocParallel)
multicoreParam <- MulticoreParam(workers = 4)
register(multicoreParam)

fdir <- normalizePath("~/Projects/amplican_manuscript/analysis/real_dataset")
this_c <- file.path(fdir, "amplican_config.csv")
this_r <- file.path(fdir, "data/amplican_results")
amplicanPipeline(config = this_c,
                 fastq_folder = file.path(fdir, "data"),
                 results_folder = this_r,
		 normalize = "guideRNA",
		 knit_reports = FALSE,
                 use_parallel = TRUE)



