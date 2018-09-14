rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(amplican)
library(data.table)
library(ggplot2)

r_path <- "/media/ai/ValenLab/Projects/data/amplican/Jamie/"
results_folders <- c("MiSeq_run1/results", "MiSeq_run5_2013_09_25/results")

allEvents <- c()
for (i in seq_along(results_folders)) {
  aln <- fread(file.path(r_path, results_folders[i], "alignments", "events_filtered_shifted.csv"))
  config <- fread(file.path(r_path, results_folders[i], "config_summary.csv"))
  # leave only consensus
  aln <- aln[aln$consensus]
  # calcualte frequency of the event
  aln$freq <- aln$counts / config$Reads_Filtered[match(aln$seqnames, config$ID)]
  # mark events that are in real editing experiment too by guide
  aln$guideRNA <- config$guideRNA[match(aln$seqnames, config$ID)]
  aln$guideRNA <- toupper(aln$guideRNA)
  aln$control <- config$Control[match(aln$seqnames, config$ID)]
  aln <- aln[order(aln$control, aln$seqnames), ] # not control at the top
  first_ctrl <- min(which(aln$control))
  aln$inTreatment <- duplicated(aln[, c("start", "end", "width", "type", "guideRNA")])
  # duplicated TRUE, means reads can be found in the treatment as !control is at the top
  allEvents <- rbind(allEvents, aln[aln$control, ])
}

p <- ggplot(allEvents,
            aes(x = freq)) +
  geom_density(fill = "black") +
  annotate("label", x = 0.0215, y = 10000, colour = "blue",
           label = "< amplicanNormalize default threshold 0.01") +
  geom_vline(xintercept = 0.01, color = "blue") +
  labs(x = "Frequency of event", y = "Density",
       fill = "Is the same event for this guide found in treatment?") +
  theme(legend.position = "top") +
  coord_cartesian(xlim = c(0, 0.1))

ggsave("~/Projects/amplican_manuscript/figures/desitribution_of_control_event_freq.png", p,
       width = 16, height = 8)

# p <- p + coord_cartesian(ylim = c(0, 10))
# ggsave("~/Projects/amplican_manuscript/figures/desitribution_of_control_event_freq_zoomed.png", p,
#        width = 16, height = 8)

sum(allEvents$freq <= 0.01)/length(allEvents$freq)
