rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(amplican)
library(BSgenome.Drerio.UCSC.danRer7)
library(CrispRVariants)
library(ggplot2)
library(reshape2)
library(rtracklayer)
library(data.table)

setwd("~/Projects/amplican_manuscript/analysis/")

pdir <- "./hdr/simulation"

danRer7 <- BSgenome.Drerio.UCSC.danRer7
guides <- import("./idx/shah_guides.bed")
guides <- guides + 5
references <- getSeq(danRer7, guides)

# get amplican results
pooled_dirs <- list.files(file.path(pdir, "amplican_results/"),
                          recursive = F, pattern = "readlen", include.dirs = TRUE,
                          full.names = TRUE)
amplican_results <- c()
for (i in pooled_dirs) {
  noff <- as.integer(gsub(".*wt_([0-9]+)freq.*", "\\1", i))
  nmut <- as.numeric(gsub(".*/([0-9]+)mut.*", "\\1", i)) # succesfull hdr
  cmut <- as.numeric(gsub(".*_([0-9]+)cedited.*", "\\1", i)) # crispr mutated
  nwt <- as.numeric(gsub(".*_([0-9]+)wt.*", "\\1", i)) # wild type

  this_r <- fread(file.path(i, "config_summary.csv"))
  amplican_results <- rbind(amplican_results,
                            data.frame(Guide = this_r$ID,
                                       Truth_HDR = nmut/(nmut+cmut+nwt) * 100,
                                       Truth_CEDIT = cmut/(nmut+cmut+nwt) * 100,
                                       Indels = noff,
                                       variable = "ampliCan",
                                       Est_HDR = this_r$HDR / this_r$Reads_Filtered * 100,
                                       Est_CEDIT = (this_r$Reads_Edited - this_r$HDR) / this_r$Reads_Filtered * 100))
}

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
  result <- counts[1:3]/counts[4] * 100
  result
}

# Parse CRISPResso pooled results
pooled_dirs <- list.files(file.path(pdir, "merged"),
                          recursive = TRUE,
                          pattern = "CRISPResso_on", include.dirs = TRUE,
                          full.names = TRUE)
condition <- gsub(".*CRISPResso_on_", "", pooled_dirs)
pooled_results <- sapply(pooled_dirs, function(x) parseCRISPResso(x))
noff <- gsub(".*_([0-9]+)freq.*", "\\1", pooled_dirs)
nmut <- as.numeric(gsub(".*_([0-9]+)mut.*", "\\1", pooled_dirs))
cmut <- as.numeric(gsub(".*_([0-9]+)cedited.*", "\\1", pooled_dirs))
nwt <- as.numeric(gsub(".*_([0-9]+)wt.*", "\\1", pooled_dirs))
pooled_results <- data.frame(Guide = condition,
                             Truth_HDR = nmut/(nmut+cmut+nwt) * 100,
                             Truth_CEDIT = cmut/(nmut+cmut+nwt) * 100,
                             Indels = noff,
                             variable = "CRISPRessoPooled",
                             Est_HDR = unname(pooled_results[2, ]),
                             Est_CEDIT = unname(pooled_results[1, ]))

# CrispRVariants and CRISPResso
base <- gsub(".fa|.gz","", list.files(pdir, pattern = "*.fa"))
bams <- file.path("./hdr/simulation", paste0(base, ".bam"))
noff <- as.integer(gsub(".*wt_([0-9]+)freq.*", "\\1", base))
frag_len <- as.integer(gsub(".*freq_([0-9]+)readlen.*", "\\1", base))
sim_guides <- gsub("(.*)_[0-9]+mut.*","\\1", base)
nmut <- as.numeric(gsub(".*_([0-9]+)mut.*", "\\1", base))
cmut <- as.numeric(gsub(".*_([0-9]+)cedited.*", "\\1", base))
nwt <- as.numeric(gsub(".*_([0-9]+)wt.*", "\\1", base))
Truth_HDR <- nmut/(nmut+cmut+nwt) * 100
Truth_CEDIT <- cmut/(nmut+cmut+nwt) * 100

crispresso_dirs <- list.files(file.path(pdir, "crispresso"), full.names = TRUE)
# Check they are in the same order
identical(unname(sapply(base, function(bb) grep(bb, crispresso_dirs))), c(1:length(base)))

result <- lapply(seq_along(base), function(i){
  # print(i)
  sim_guide <- sim_guides[i]
  crispresso <- parseCRISPResso(crispresso_dirs[i])
  c(sim_guide, Truth_HDR[i], Truth_CEDIT[i], noff[i], "CRISPResso",
    crispresso[2], crispresso[1])
})

result <- data.frame(do.call(rbind, result))
colnames(result) <- c("Guide", "Truth_HDR", "Truth_CEDIT", "Indels", "variable",
                      "Est_HDR", "Est_CEDIT")
#result <- melt(result, id.vars=c("Guide", "Truth", "Indels"))
result_save <- result

result <- rbind(as.matrix(result_save),
                 as.matrix(pooled_results),
                 as.matrix(amplican_results))
result <- as.data.frame(result, stringsAsFactors = FALSE)
result$Indels <- factor(result$Indels, levels = c(1, 2, 3))
levels(result$Indels) <- c("Mismatch", "Insertions", "Deletions")
result$Est_CEDIT <- as.numeric(result$Est_CEDIT)
result$Est_HDR <- as.numeric(result$Est_HDR)
result$Truth_HDR_num <- round(as.numeric(result$Truth_HDR), 2)
result$Truth_CEDIT_num <- round(as.numeric(result$Truth_CEDIT), 2)
result$Truth_HDR <- factor(result$Truth_HDR_num, levels = c(0.00, 33.33, 66.67),
                           labels = c("0%", "33.3%", "66.7%"))
result$Truth_CEDIT <- factor(result$Truth_CEDIT_num, levels = c(0.00, 10.00, 33.33),
                           labels = c("0%", "10%", "33.3%"))
result$variable <- factor(result$variable,
                          levels = c("ampliCan", "CRISPResso", "CRISPRessoPooled"),
                          ordered = TRUE)
cols <- c("#e69f00", "#781C81", "#009E73")

data.table::fwrite(result, "../figures/indel_rate_vs_hdr.csv")
result_mean <- data.table(result)
result_mean <- result_mean[, .(Est_HDR = mean(Est_HDR),
                               Est_CEDIT = mean(Est_CEDIT),
                               Truth_HDR_num = mean(Truth_HDR_num),
                               Truth_CEDIT_num = mean(Truth_CEDIT_num)),
                           by = c("Truth_HDR", "Truth_CEDIT", "variable")]

p <- ggplot(result_mean) +
  geom_hline(aes(yintercept = Truth_CEDIT_num), linetype = "dotted") +
  geom_vline(aes(xintercept = Truth_HDR_num), linetype = "dotted") +
  geom_point(aes(x = Est_HDR, y = Est_CEDIT, colour = variable),
             alpha = 0.5, size = 6) +
  facet_grid(Truth_CEDIT  ~ Truth_HDR) +
  theme_bw() +
  labs(x = "Estimated HDR efficiency %", y = "Estimated NHEJ editing %") +
  theme(axis.text = element_text(size = 22),
        axis.text.x = element_text(angle = 25, hjust = 1),
        axis.text.y = element_text(angle = 25, hjust = 1),
        axis.title.y = element_text(margin = margin(0,20,0,0), size = 24),
        axis.title.x = element_text(margin = margin(15,0,10,0), size = 24),
        legend.key = element_blank(),
        legend.text=element_text(size=24),
        legend.title = element_blank(),
        legend.position = "bottom",
        strip.background = element_blank()) +
  scale_colour_manual(values = cols) +
  guides(colour = guide_legend(override.aes = list(alpha=1)))
p
ggplot2::ggsave("../figures/indel_rate_vs_hdr.png", p, dpi = 400, width = 15, height = 10)
ggplot2::ggsave("../figures/indel_rate_vs_hdr.pdf", p, dpi = 400, width = 15, height = 10)
