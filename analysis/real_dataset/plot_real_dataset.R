rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(BSgenome.Drerio.UCSC.danRer7)
library(CrispRVariants)
library(ggplot2)
library(reshape2)
library(rtracklayer)
library(data.table)

pdir <- "./real_dataset/data"

danRer7 <- BSgenome.Drerio.UCSC.danRer7
guides <- import("./real_dataset/guides.bed")
guides <- guides + 5
references <- getSeq(danRer7, guides)

# get amplican results
amplican_results <- fread(file.path(pdir, "amplican_results/config_summary.csv"))

guides <- guides[match(amplican_results$guideRNA, guides$name)]
references <- references[match(amplican_results$guideRNA, guides$name)]

results <- data.frame(ID = gsub("\\.", "_", amplican_results$ID))
results$ampliCan <- amplican_results$Reads_Indel / amplican_results$Reads_Filtered * 100
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
results$CRISPRessoPooled[match(cp_names, results$ID)] <- unname(pooled_results)

# Parse ampliconDIVider results
results$AmpliconDIVider <- 0
adiv_files <- list.files(file.path(pdir, "amplicondivider"),
                         full.names = TRUE)
adiv_results <- sapply(adiv_files, function(fn){
  tt <- read.table(fn, sep = "\t")[1,c(6)]*100
})
a_names <- gsub("_txt", "", gsub("\\.", "_", basename(names(adiv_results))))
results$AmpliconDIVider[match(a_names, results$ID)] <- unname(adiv_results)

# CrispRVariants and CRISPResso
base <- c("injected_S1.bam", "uninjected_S2.bam")
bams <- c()
bams[which(!amplican_results$Control)] <- base[1]
bams[which(amplican_results$Control)] <- base[2]
bams <- file.path(pdir, bams)
results$CRISPResso <- 0
results$CrispRVariants <- 0

crispresso_dirs <- list.files(file.path(pdir, "crispresso"), full.names = TRUE)
for (i in seq_len(nrow(amplican_results))) {
  cset <- readsToTarget(bams[i], target.loc = 22,
                        target = guides[i], reference = references[i], collapse.pairs = TRUE,
                        verbose = FALSE)
  results$CRISPResso[i] <- parseCRISPResso(crispresso_dirs[i])[[1]]
  results$CrispRVariants[i] <- mutationEfficiency(cset)[["Average"]]
}

result <- melt(results[!amplican_results$Control, ], id.vars=c("ID"))
result$variable <- factor(result$variable,
                          levels = c("ampliCan", "CrispRVariants", "AmpliconDIVider", "CRISPResso",
                                     "CRISPRessoPooled"),
                          ordered = TRUE)
cols <- c("#e69f00", "#D92120", "#3F56A7", "#781C81", "#009E73")

data.table::fwrite(result, "../figures/indel_rate_real_datasets.csv")
p <- ggplot(result) +
  geom_point(aes(x = ID, y = value, color = variable), size = 6, alpha = 0.6) +
  ylab("Estimated mutation efficiency %") +
  xlab("Experiments") +
  theme_bw() +
  theme(axis.text = element_text(size = 12),
        axis.title.y = element_text(margin = margin(0,20,0,0), size = 14),
        axis.title.x = element_text(margin = margin(15,0,10,0), size = 14),
        axis.text.x = element_blank(),
        axis.ticks.x = element_blank(),
        strip.text.x = element_text(size = 14),
        legend.key = element_blank(),
        legend.title = element_blank(),
        legend.position = "bottom",
        strip.background = element_blank()) +
  scale_colour_manual(values = cols) +
  guides(colour = guide_legend(override.aes = list(alpha = 1)))

ggplot2::ggsave("../figures/indel_rate_real_datasets.png", p, dpi = 400, width = 15, height = 10)
ggplot2::ggsave("../figures/indel_rate_real_datasets.pdf", p, dpi = 400, width = 15, height = 10)
