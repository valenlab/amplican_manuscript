rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(BSgenome.Drerio.UCSC.danRer7)
library(CrispRVariants)
library(ggplot2)
library(reshape2)
library(rtracklayer)
library(data.table)

setwd("/home/ai/Projects/amplican_manuscript/analysis/")
pdir <- "./real_dataset/data"

danRer7 <- BSgenome.Drerio.UCSC.danRer7
guides1 <- import("./real_dataset/guides.bed")
guides1 <- guides1 + 5
references <- getSeq(danRer7, guides1)

# get amplican results
amplican_results <- fread(file.path(pdir, "amplican_results/config_summary.csv"))

# amplican not normalized 
aln <- fread(file.path(pdir, "amplican_results/alignments", "events_filtered_shifted.csv"))
library(amplican)
config_not_normalized <- amplicanSummarize(aln[aln$consensus & aln$overlaps, ], amplican_results)

guides <- guides1[match(toupper(amplican_results$guideRNA), guides1$name)]
references <- references[match(toupper(amplican_results$guideRNA), guides1$name)]

results <- data.frame(ID = gsub("\\.", "_", amplican_results$ID))
results$ampliCan <- amplican_results$Reads_Edited / amplican_results$Reads_Filtered * 100
results$ampliCan_NotNormalized <- config_not_normalized$Reads_Edited / amplican_results$Reads_Filtered * 100
results$CRISPRessoPooled <- 0
parseCRISPResso <- function(results_dir){
  results_f <- file.path(results_dir, "Quantification_of_editing_frequency.txt")
  system(paste0("echo '\n' >>", results_f))
  f <- file(results_f)
  lns <- readLines(f)
  close(f)
  nhej <- lns[grep(".* NHEJ:", lns)]
  hdr <- lns[grep(".* HDR:", lns)]
  mix <- lns[grep(".* Mixed HDR-NHEJ:", lns)]
  total <- lns[grep("Total", lns)]
  counts <- as.numeric(gsub(".*:([0-9]+)\ .*", "\\1", c(nhej, hdr, mix, total)))
  result <- sum(counts[1:3]) / counts[4] * 100
  c(result, counts[4])
}

# Parse CRISPResso pooled results
pooled_dirs <- list.files(file.path(pdir, "merged"),
                          recursive = TRUE,
                          pattern = "CRISPResso_on", include.dirs = TRUE,
                          full.names = TRUE)
pooled_results <- sapply(pooled_dirs, function(x) parseCRISPResso(x)[1])
cp_names <- gsub("CRISPResso_on_", "", basename(names(pooled_results)))
results$ID_special <- gsub("-", "_", results$ID)
results$ID_special <- gsub("&", "_", results$ID_special)
results$ID_special <- gsub("\\+", "_", results$ID_special)
results$CRISPRessoPooled[match(cp_names, results$ID_special)] <- unname(pooled_results)

# Parse ampliconDIVider results
results$AmpliconDIVider <- 0
adiv_files <- list.files(file.path(pdir, "amplicondivider"),
                         full.names = TRUE)
adiv_results <- sapply(adiv_files, function(fn){
  tt <- tryCatch(read.table(fn, sep = "\t")[1,c(6)]*100, error = function(e) 0) 
})
a_names <- gsub("_txt", "", gsub("\\.", "_", basename(names(adiv_results))))
results$AmpliconDIVider[match(a_names, results$ID)] <- unname(adiv_results)

# CrispRVariants and CRISPResso
bams <- paste0(amplican_results$ID, ".bam")
bams <- file.path(pdir, bams)
results$CRISPResso <- 0
results$CrispRVariants <- 0

crispresso_dirs <- list.files(file.path(pdir, "crispresso"), full.names = TRUE)
for (i in seq_len(nrow(amplican_results))) {
  
  results$CRISPResso[i] <- tryCatch(parseCRISPResso(crispresso_dirs[i])[[1]], 
                                    error = function(e) 0)
  cset <- tryCatch(readsToTarget(bams[i], target.loc = 22,
                        target = guides[i], reference = references[i], collapse.pairs = TRUE,
                        verbose = FALSE), error = function(e) {0;next();})
  results$CrispRVariants[i] <- tryCatch(mutationEfficiency(cset)[["Average"]], error = function(e) 0)
}

results$Control <- amplican_results$Control
results$Guide <- amplican_results$guideRNA
results$Group <- amplican_results$Group
results$x <- 0
results$x[results$Control] <- seq_len(sum(results$Control))
results$x[!results$Control] <- seq_len(sum(!results$Control))

results[do.call(cbind, lapply(results, is.na))] <- 0
results[do.call(cbind, lapply(results, is.nan))] <- 0
results <- results[complete.cases(results), ]
results$ID_special <- NULL
results <- results[c(results$ampliCan + results$CRISPRessoPooled + 
                       results$CRISPResso + results$AmpliconDIVider + 
                       results$CrispRVariants) > 0, ]

results_save <- results
results <- results[!results$Control, ] #263

table(sapply(strsplit(as.character(results$ID), '_'), function(x) x[[1]]))

# group reads into 3 categories CONTROL, SIMILAR, PROCESSING
results$Type <- "Processing"
results$Type[abs(results$ampliCan - results$ampliCan_NotNormalized) >= 5] <- "Control"

summary_results <- data.frame(tool = rep(c("CrispRVariants",
                                       "AmpliconDIVider", "CRISPResso",
                                       "CRISPRessoPooled"), each = 2),
                              count = 0,
                              type = rep(c("Different", "Similar ±5%")))
results2 <- results
results2$ampliCan_NotNormalized <- results2$ampliCan_NotNormalized - results2$ampliCan
results2$CRISPRessoPooled <- results2$CRISPRessoPooled - results2$ampliCan
results2$AmpliconDIVider <- results2$AmpliconDIVider - results2$ampliCan
results2$CrispRVariants <- results2$CrispRVariants - results2$ampliCan
results2$CRISPResso<- results2$CRISPResso - results2$ampliCan

# similar 5%
summary_results$count[2] <- sum(abs(results2$CrispRVariants) <= 5)
summary_results$count[4] <- sum(abs(results2$AmpliconDIVider) <= 5)
summary_results$count[6] <- sum(abs(results2$CRISPResso) <= 5)
summary_results$count[8] <- sum(abs(results2$CRISPRessoPooled) <= 5)

# Different 
summary_results$count[1] <- sum(abs(results2$CrispRVariants) > 5)
summary_results$count[3] <- sum(abs(results2$AmpliconDIVider) > 5)
summary_results$count[5] <- sum(abs(results2$CRISPResso) > 5)
summary_results$count[7] <- sum(abs(results2$CRISPRessoPooled) > 5)

summary_results$tool <- factor(summary_results$tool,
                               levels = c("CrispRVariants",
                                          "AmpliconDIVider", "CRISPResso",
                                          "CRISPRessoPooled"),
                               ordered = TRUE)
cols <- c("#e69f00", "#56b4e9")

summary_results$count <- round(summary_results$count/263 * 100, 2)
p <- ggplot(summary_results, aes(tool, count, fill = type, label = count)) +
  geom_bar(stat = "identity") +
  geom_text(size = 5, position = position_stack(vjust = 0.5)) +
  ylab("Difference to ampliCan, # of experiments [%]") +
  xlab("") +
  theme_bw() +
  theme(axis.text = element_text(size = 16),
        axis.title.y = element_text(margin = margin(0,20,0,0), size = 18),
        axis.title.x = element_text(margin = margin(15,0,10,0), size = 18),
        strip.text.x = element_text(size = 18),
        legend.key = element_blank(),
        legend.text=element_text(size = 14),
        legend.title = element_blank(),
        legend.position = "bottom",
        strip.background = element_blank()) +
  scale_fill_manual(values = cols)
ggplot2::ggsave("../figures/counts_real_datasets.png", p, dpi = 400, width = 15, height = 10)
ggplot2::ggsave("../figures/counts_rate_real_datasets.pdf", p, dpi = 400, width = 15, height = 10)

#results$x[results$Type == "Processing"] <- seq_along(results$x[results$Type == "Processing"])
#results$x[results$Type == "Similar +/- 5%"] <- seq_along(results$x[results$Type == "Similar ±5%"])
#results$x[results$Type == "Control"] <- seq_along(results$x[results$Type == "Control"])

table(results$Type[!results$Control])
table(results$Type[!results$Control])/sum(table(results$Type[!results$Control]))


# amplican as baseline
#res_save <- results
#results <- res_save

results$ampliCan <- results$ampliCan - results$ampliCan_NotNormalized
results$CRISPRessoPooled <- results$CRISPRessoPooled - results$ampliCan_NotNormalized
results$AmpliconDIVider <- results$AmpliconDIVider - results$ampliCan_NotNormalized
results$CrispRVariants <- results$CrispRVariants - results$ampliCan_NotNormalized
results$CRISPResso<- results$CRISPResso - results$ampliCan_NotNormalized
results <- results[results$Type == "Control", ]
results[, c("ampliCan_NotNormalized", "Control", "Group", "x", "Guide", "Type")] <- NULL
results <- results[order(results$ampliCan, decreasing = TRUE), ]
results$x <- seq_len(nrow(results))

result <- melt(results[complete.cases(results), ], id.vars = c("ID", "x"))
data.table::fwrite(result, "../figures/indel_rate_real_datasets.csv")

#result <- data.table::fread("../figures/indel_rate_real_datasets.csv")
#result <- result[!result$Control, ]
result$ID <- as.vector(result$ID)

# result <- result[result$variable != "ampliCan", ]
# result <- result[!(result$variable == "ampliCan_NotNormalized" & 
#                      as.character(result$Type) %in% c("Processing", "Similar ±5%")), ]

result$variable <- factor(result$variable,
                          levels = c("ampliCan", "CrispRVariants", #, "ampliCan_NotNormalized"
                                     "AmpliconDIVider", "CRISPResso",
                                     "CRISPRessoPooled"),
                          ordered = TRUE)
cols <- c("#e69f00", "#D92120", "#3F56A7", "#781C81", "#009E73") #"#d55e00", 
# result$Control <- factor(result$Control, levels = c(FALSE, TRUE),
#                          labels = c("Injected", "Uninjected"),
#                          ordered = TRUE)
# result$x <- interaction(result$Guide, result$Group)
result$value <- round(result$value, 2)

p <- ggplot(result) +
  geom_point(aes(x = x, y = value, color = variable), size = 6, alpha = 0.6) +
  ylab("Estimated mutation efficiency - ampliCan not normalized estimates [%]") +
  xlab("Experiments") +
  theme_bw() +
  theme(axis.text = element_text(size = 16),
        axis.title.y = element_text(margin = margin(0,20,0,0), size = 18),
        axis.title.x = element_text(margin = margin(15,0,10,0), size = 18),
        axis.text.x = element_blank(),
        axis.ticks.x = element_blank(),
        strip.text.x = element_text(size = 18),
        legend.key = element_blank(),
        legend.text=element_text(size = 14),
        legend.title = element_blank(),
        legend.position = "bottom",
        strip.background = element_blank()) +
  scale_colour_manual(values = cols) +
  guides(colour = guide_legend(override.aes = list(alpha = 1)))

ggplot2::ggsave("../figures/not_norm_dist_real_datasets.png", p, dpi = 400, width = 15, height = 10)
ggplot2::ggsave("../figures/not_norm_dist_real_datasets.pdf", p, dpi = 400, width = 15, height = 10)

#arr <- c(results$ampliCan, results$ampliCan_NotNormalized),
# result <- result[result$variable %in% c("ampliCan", "ampliCan_NotNormalized", "CrispRVariants"), ]
# p <- ggplot(result) +
#   geom_violin(aes(x = variable, y = value, color = variable), alpha = 0.6) +
#   ylab("Estimated mutation efficiency %") +
#   xlab("Experiments") +
#   theme_bw() +
#   theme(axis.text = element_text(size = 16),
#         axis.title.y = element_text(margin = margin(0,20,0,0), size = 18),
#         axis.title.x = element_text(margin = margin(15,0,10,0), size = 18),
#         axis.text.x = element_blank(),
#         axis.ticks.x = element_blank(),
#         strip.text.x = element_text(size = 18),
#         legend.key = element_blank(),
#         legend.text=element_text(size = 14),
#         legend.title = element_blank(),
#         legend.position = "bottom",
#         strip.background = element_blank()) +
#   scale_colour_manual(values = cols) +
#   guides(colour = guide_legend(override.aes = list(alpha = 1))) +
#   facet_grid(. ~ Type, scales = "free_x")


# p <- ggplot(result) +
#   geom_point(aes(x = ID, y = value, color = variable), size = 6, alpha = 0.6) +
#   ylab("Estimated mutation efficiency %") +
#   xlab("Experiments") +
#   theme_bw() +
#   theme(axis.text = element_text(size = 16),
#         axis.title.y = element_text(margin = margin(0,20,0,0), size = 18),
#         axis.title.x = element_text(margin = margin(15,0,10,0), size = 18),
#         axis.text.x = element_blank(),
#         axis.ticks.x = element_blank(),
#         strip.text.x = element_text(size = 18),
#         legend.key = element_blank(),
#         legend.text=element_text(size = 14),
#         legend.title = element_blank(),
#         legend.position = "bottom",
#         strip.background = element_blank()) +
#   scale_colour_manual(values = cols) +
#   guides(colour = guide_legend(override.aes = list(alpha = 1))) +
#   facet_grid(. ~ Type, scales = "free_x") #+
#   #geom_line(aes(group = ugroup)) #+
#   #geom_point(size = 3, shape = 21)
# p
# run9_inj_charon_lnc_mat_e1_1_2 amplican above all
# run6_elovl6_e1_1_2_7071_inj amplican middle crisprvariants 100%, rest 0

# run6_charon_lnc_mat_e1_1_2_3685_inj crvar 100% rest 0 ampl 4
# run7_elovl6_e1_1_2_inj crvar 100% rest 0 ampl 18%

# ggplot2::ggsave("../figures/indel_rate_real_datasets.png", p, dpi = 400, width = 15, height = 10)
# ggplot2::ggsave("../figures/indel_rate_real_datasets.pdf", p, dpi = 400, width = 15, height = 10)
