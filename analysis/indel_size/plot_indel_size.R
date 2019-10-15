rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(BSgenome.Drerio.UCSC.danRer7)
library(CrispRVariants)
library(ggplot2)
library(reshape2)
library(rtracklayer)
library(data.table)

pdir <- "./indel_size/simulation"

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
  this_r <- fread(file.path(i, "config_summary.csv"))
  this_r$Del <- this_r$Reads_Del / this_r$Reads_Filtered * 100
  this_r$Fsft <- this_r$Reads_Frameshifted / this_r$Reads_Filtered * 100
  this_r$Del_Ins <- this_r$Reads_Edited / this_r$Reads_Filtered * 100

  noff <- as.integer(gsub(".*wt_([0-9]+)freq.*", "\\1", i))
  nmut <- as.numeric(gsub(".*/([0-9]+)mut.*", "\\1", i))
  nwt <- as.numeric(gsub(".*_([0-9]+)wt.*", "\\1", i))
  amplican_results <- rbind(amplican_results,
                            data.frame(Guide = this_r$ID,
                                       Truth = nmut/(nmut+nwt) * 100,
                                       Indels = noff,
                                       variable = "ampliCan",
                                       value = this_r$Del_Ins))
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
  result <- sum(counts[1:3])/counts[4]*100
  c(result, counts[4])
}

# Parse CRISPResso pooled results
pooled_dirs <- list.files(file.path(pdir, "merged"),
                          recursive = TRUE,
                          pattern = "CRISPResso_on", include.dirs = TRUE,
                          full.names = TRUE)
condition <- gsub(".*CRISPResso_on_", "", pooled_dirs)
pooled_results <- sapply(pooled_dirs, function(x) parseCRISPResso(x)[1])
noff <- gsub(".*_([0-9]+)freq.*", "\\1", pooled_dirs)
nmut <- as.numeric(gsub(".*_([0-9]+)mut.*", "\\1", pooled_dirs))
nwt <- as.numeric(gsub(".*_([0-9]+)wt.*", "\\1", pooled_dirs))
pooled_results <- data.frame(Guide = condition, Truth = nmut/(nmut+nwt) * 100,
                             Indels = noff, variable = "CRISPRessoPooled",
                             value = unname(pooled_results))
# Parse ampliconDIVider results
adiv_files <- list.files(file.path(pdir, "amplicondivider"),
                         full.names = TRUE)
adiv_results <- sapply(adiv_files, function(fn){
  tt <- read.table(fn, sep = "\t")[1,c(6)]*100
})
exclude <- adiv_results > 100
adiv_results <- adiv_results[!exclude]
print(sprintf("excluded %s", sum(exclude)))
adiv_gd <- gsub("_.*","", basename(adiv_files)[!exclude])
adiv_noff <- gsub(".*_([0-9]+)freq.*", "\\1", adiv_files[!exclude])
adiv_nmut <- as.numeric(gsub(".*_([0-9]+)mut.*", "\\1", adiv_files[!exclude]))
adiv_nwt <- as.numeric(gsub(".*_([0-9]+)wt.*", "\\1", adiv_files[!exclude]))
adiv_results <- data.frame(Guide = adiv_gd,
                           Truth = adiv_nmut/(adiv_nmut+adiv_nwt)*100,
                           Indels = adiv_noff,
                           variable = "AmpliconDIVider",
                           value = unname(adiv_results))

# CrispRVariants and CRISPResso
base <- gsub(".fa|.gz","", list.files(pdir, pattern = "*.fa"))
bams <- file.path("./indel_size/simulation", paste0(base, ".bam"))
noff <- as.integer(gsub(".*wt_([0-9]+)freq.*", "\\1", base))
frag_len <- as.integer(gsub(".*freq_([0-9]+)readlen.*", "\\1", base))
sim_guides <- gsub("(.*)_[0-9]+mut.*","\\1", base)
nmut <- as.numeric(gsub(".*_([0-9]+)mut.*", "\\1", base))
nwt <- as.numeric(gsub(".*_([0-9]+)wt.*", "\\1", base))
truth <- nmut/(nmut+nwt) * 100

crispresso_dirs <- list.files(file.path(pdir, "crispresso"), full.names = TRUE)
# Check they are in the same order
identical(unname(sapply(base, function(bb) grep(bb, crispresso_dirs))),c(1:length(base)))

result <- lapply(seq_along(base), function(i){
  # print(i)
  sim_guide <- sim_guides[i]
  guide <- guides[guides$name == sim_guide]
  reference <- references[guides$name == sim_guide][[1]]
  cset <- readsToTarget(bams[i], target.loc = 22,
                        target = guide, reference = reference, collapse.pairs = TRUE,
                        verbose = FALSE)
  crispresso <- parseCRISPResso(crispresso_dirs[i])
  c(sim_guide, noff[i], truth[i],
    mutationEfficiency(cset)[["Average"]], crispresso[[1]])
})

# CR2
parseCRISPResso2 <- function(results_dir){
  results_f2 <- data.table::fread(file.path(results_dir, "CRISPResso_quantification_of_editing_frequency.txt"))
  results_f2$`Modified%`
}
crispresso2_dirs <- list.files(file.path(pdir, "crispresso2"), full.names = TRUE)
crispresso2_dirs <- crispresso2_dirs[1:(length(crispresso2_dirs) - 1)]

condition <- gsub(".*CRISPResso_on_", "", crispresso2_dirs)
condition <- strsplit(condition, "_")
condition <- sapply(condition, function(x) if (is.na(as.numeric(x[2]))) paste0(x[1], "_", x[2]) else x[1])
cr2_results <- sapply(crispresso2_dirs, function(x) parseCRISPResso2(x))
noff <- gsub(".*_([0-9]+)freq.*", "\\1", crispresso2_dirs)
nmut <- as.numeric(gsub(".*_([0-9]+)mut.*", "\\1", crispresso2_dirs))
nwt <- as.numeric(gsub(".*_([0-9]+)wt.*", "\\1", crispresso2_dirs))
cr2_results <- data.frame(Guide = condition, Truth = nmut/(nmut+nwt) * 100,
                             Indels = noff, variable = "CRISPResso2",
                             value = unname(cr2_results) * 100)

# # cr2 pooled
# crispresso2_dirs <- list.files(file.path(pdir, "crispresso2/pooled"), full.names = TRUE)
# parseCRISPResso2p <- function(results_dir){
#   tryCatch({
#     results_f2 <- data.table::fread(file.path(results_dir, "SAMPLES_QUANTIFICATION_SUMMARY.txt"))
#     results_f2[, c('Name', "Modified%"), with = FALSE]
#   }, error = function() {
#     data.table()
#   })
# }
# cr2_results <- sapply(crispresso2_dirs, function(x) parseCRISPResso2p(x))
# noff <- gsub(".*_([0-9]+)freq.*", "\\1", crispresso2_dirs)
# nmut <- as.numeric(gsub(".*_([0-9]+)mut.*", "\\1", crispresso2_dirs))
# nwt <- as.numeric(gsub(".*_([0-9]+)wt.*", "\\1", crispresso2_dirs))
# cr2_results <- data.frame(Guide = condition, Truth = nmut/(nmut+nwt) * 100,
#                           Indels = noff, variable = "CRISPResso2Pooled",
#                           value = unname(cr2_results))



result <- data.frame(do.call(rbind, result))
colnames(result) <- c("Guide", "Indels", "Truth", "CrispRVariants", "CRISPResso")
result <- melt(result, id.vars=c("Guide", "Truth", "Indels"))
result_save <- result

result <- rbind(result_save, pooled_results, cr2_results, adiv_results, amplican_results)
result$Indels <- factor(result$Indels, levels = c(1, 2, 3, 4))
levels(result$Indels) <- c("No indels > 10bp", "Mixed Indels", "Insertions > 10bp", "Deletions > 10bp")
class(result$value) <- "numeric"
class(result$Truth) <- "factor"
truths <- c("0", "33.3%", "66.7%", "90%")
levels(result$Truth) <- truths
result$variable <- factor(result$variable,
                          levels = c("ampliCan", "CrispRVariants", "AmpliconDIVider", "CRISPResso",
                                     "CRISPRessoPooled", "CRISPResso2"),
                          ordered = TRUE)
cols <- c("#e69f00", "#D92120", "#3F56A7", "#781C81", "#009E73", "#cc79a7")

tr <- data.frame(Truth = levels(result$Truth),
                 TrNum = as.numeric(gsub("%", "", levels(result$Truth))))

data.table::fwrite(result, "../figures/indel_rate_vs_indel_size.csv")
p <- ggplot(result) +
  geom_hline(data = tr, aes(yintercept = TrNum), linetype = "dotted") +
  facet_wrap(~Truth, nrow = 2) +
  geom_point(aes(x=Indels, y=value, colour=variable),
             alpha = 0.5, position = position_dodge(width = 0.6), size = 6) +
  theme_bw() + xlab("Chance for indels.") +
  ylab("Estimated mutation efficiency %") +
  theme(axis.text = element_text(size = 22),
        axis.text.x = element_text(angle = 25, hjust = 1),
        axis.title.y = element_text(margin = margin(0,20,0,0), size = 24),
        axis.title.x = element_text(margin = margin(15,0,10,0), size = 24),
        strip.text.x = element_text(size = 24),
        legend.key = element_blank(),
        legend.text=element_text(size=24),
        legend.title = element_blank(),
        legend.position = "bottom",
        strip.background = element_blank()) +
  scale_colour_manual(values = cols) +
  guides(colour = guide_legend(override.aes = list(alpha=1)))

ggplot2::ggsave("../figures/indel_rate_vs_indel_size.png", p, dpi = 400, width = 15, height = 10)
ggplot2::ggsave("../figures/indel_rate_vs_indel_size.pdf", p, dpi = 400, width = 15, height = 10)
