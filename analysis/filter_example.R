rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(amplican)
library(ggplot2)

setwd("/home/ai/Projects/amplican_manuscript/analysis")
pdir = "./real_offtargets/simulation_0.3/amplican_results/"
fdir = list.files(pdir)

plot_clusters <- function(x, cl) {
  centers <- as.data.frame(cl$centers)
  p <- ggplot(data = data.frame(x = x, class = as.factor(cl$cluster)),
              aes(x = x.1, y = x.2, color = class)) + geom_point() + 
    geom_point(data = centers, aes(x=V1, y=V2, color = "Cluster Centers"), 
               size = 18, shape = 13) +
    xlab("Normalized alignment score") + ylab("Normalized # of events") + 
    theme(legend.position="none")
}
# returns plot instead of logical like amplican::findLQR
plotLQR <- function(aln) { 
  data.table::setDT(aln)
  if (dim(aln)[1] < 1000) stop("")
  
  aln_n <- aln[, list(events = .N/max(end), score = max(score)),
               by = c("read_id", "strand", "seqnames")]
  aln_n <- aln_n[, list(events = events/length(unique(strand)),
                        score = score/length(unique(strand))),
                 by = c("read_id", "seqnames")]
  x <- cbind(amplican:::range01(aln_n$score), amplican:::range01(aln_n$events))
  
  k2 <- stats::kmeans(x, 2, iter.max = 1000, nstart = 1000)
  k2s <- clusterCrit::intCriteria(x, k2$cluster, "silhouette")$silhouette
  k3 <- stats::kmeans(x, 3, iter.max = 1000, nstart = 1000)
  k3s <- clusterCrit::intCriteria(x, k3$cluster, "silhouette")$silhouette
  plot_clusters(x, if (k2s >= k3s) k2 else k3)
}

f = 12 # 25% offtargets and 90% of real mutated reads
# load events
aln <- fread(file.path(pdir, fdir[f], "alignments/raw_events.csv"))
#a <- readRDS(file.path(pdir, fdir[f], "results", "alignments", "AlignmentsExperimentSet.rds"))
cfgT <- fread(file.path(pdir, fdir[f], "config_summary.csv"))

# continue as in amplicanPipeline
aln$overlaps <- amplicanOverlap(aln, cfgT, cut_buffer = 5)
aln$consensus <- amplicanConsensus(aln, cfgT)

# filter events overlapping primers
eOP <- findEOP(aln, cfgT)
aln <- aln[!eOP, ]

# find PRIMER DIMERS - should all be always 0
PD <- findPD(aln, cfgT, PRIMER_DIMER = 40)

# summarize how many PRIMER DIMER reads per ID
onlyPD <- aln[PD, ]
onlyPD <- unique(onlyPD, by = c("seqnames", "read_id"))
data.table::setDT(onlyPD)
summaryPD <- onlyPD[, list(counts  = sum(counts)), by = c("seqnames")]
cfgT$PRIMER_DIMER <- 0
cfgT$PRIMER_DIMER[match(summaryPD$seqnames, cfgT$ID)] <- summaryPD$counts

# apply filter - remove all events that come from PD infected reads
aln <- aln[!onlyPD, on = list(seqnames, read_id)]
  
# alignment score filter
i = 1 # use first of the simulated genes
aln_id <- aln[seqnames == cfgT$ID[i]] 
lqr_example <- plotLQR(aln_id)
ggsave("../figures/low_quality_reads_example.png", lqr_example)