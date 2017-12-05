rm(list = ls(all = TRUE))
gc(reset = TRUE)

library(ggplot2)
library(dplyr)
library(scales)

setwd("/home/ai/Projects/amplican_manuscript/analysis/")
indels <- data.table::fread("../figures/indel_rate_vs_indel_size.csv")
indels$desc <- indels$Indels
indels$desc2 <- "Indel size"
colnames(indels)[3] <- "NOfftargets"
roff_01 <- data.table::fread("../figures/indel_rate_vs_real_offtargets0.1.csv")
roff_01$desc <- "10%"
roff_01$desc2 <- "Contaminant reads"
roff_02 <- data.table::fread("../figures/indel_rate_vs_real_offtargets0.2.csv")
roff_02$desc <- "20%"
roff_02$desc2 <- "Contaminant reads"
roff_03 <- data.table::fread("../figures/indel_rate_vs_real_offtargets0.3.csv")
roff_03$desc <- "30%"
roff_03$desc2 <- "Contaminant reads"

off <- data.table::fread("../figures/indel_rate_vs_offtarget.csv")
off$desc <- "30%"
off$desc2 <- "Contaminant reads CrispRVariants dataset"

err <- rbind(indels, roff_01, roff_02, roff_03)
err$Truth <- as.numeric(gsub("%", "", err$Truth))
err$value <- abs(err$value - err$Truth)
err$value_log <- log10(err$value)
err$value_log[!is.finite(err$value_log)] <- 0
err$desc[err$desc == "Normal"] <- "Mixed indels"

# sqrt(mean((m - t)^2))
err_medians <- err %>% 
  group_by(variable, desc, desc2) %>% 
  summarise(median = median(value),
            val_min = min(value),
            val_max = max(value))
err_medians_log <- err %>% 
  group_by(variable, desc, desc2) %>% 
  summarise(median = median(value_log),
            val_min = min(value_log),
            val_max = max(value_log))
tools <- c("ampliCan", "CrispRVariants", "AmpliconDIVider", "CRISPResso",
           "CRISPRessoPooled")

tools_col <- c("#e69f00", "#D92120","#3F56A7", "#781C81", "#009E73")
err$variable <- factor(err$variable, levels = tools, ordered = TRUE)
err_medians$variable <- factor(err_medians$variable, levels = tools, ordered = TRUE)
err_medians_log$variable <- factor(err_medians_log$variable, levels = tools, ordered = TRUE)
d2levels <- c("Contaminant reads", "Indel size")
err$desc2 <- factor(err$desc2, levels = d2levels, ordered = TRUE)
err_medians$desc2 <- factor(err_medians$desc2, levels = d2levels, ordered = TRUE)
err_medians_log$desc2 <- factor(err_medians_log$desc2, levels = d2levels, ordered = TRUE)
dlevels <- c("No indels > 10bp", "Mixed indels", "Insertions > 10bp", 
             "10%", "20%", "30%")
err$desc <- factor(err$desc, levels = dlevels, ordered = TRUE)
err_medians$desc <- factor(err_medians$desc, levels = dlevels, ordered = TRUE)
err_medians_log$desc <- factor(err_medians_log$desc, levels = dlevels, ordered = TRUE)

p <- ggplot(err, aes(desc, value, colour = variable)) +
  geom_point(alpha = 0.2, position = position_dodge(width = 0.9)) +
  geom_errorbar(data = err_medians, aes(x = desc, y = median, ymin = median, 
                                        ymax = median, colour = variable),
                position = position_dodge(width = 0.9)) +
  facet_grid(. ~ desc2, scales = "free_x", space = "free_x") +
  scale_colour_manual(aes(variable), values = tools_col) +
  theme(text = element_text(size = 24),
        legend.position = "bottom",
        legend.title = element_blank(),
        panel.background = element_blank(),
        axis.ticks.x = element_blank()) +
  labs(x = "", y = "Error (estimated - real mutation efficiency) [%]")
p

ggsave("../figures/fig_2.png", p, dpi = 400, width = 17, height = 8)
ggsave("../figures/fig_2.pdf", p, dpi = 400, width = 17, height = 8)

p <- ggplot(err, aes(desc, value_log, colour = variable)) +
  geom_point(alpha = 0.2, position = position_dodge(width = 0.9)) +
  geom_errorbar(data = err_medians_log, aes(x = desc, y = median, ymin = median, 
                                        ymax = median, colour = variable),
                position = position_dodge(width = 0.9)) +
  facet_grid(. ~ desc2, scales = "free_x", space = "free_x") +
  scale_colour_manual(aes(variable), values = tools_col) +
  theme(text = element_text(size = 24),
        legend.position = "bottom",
        legend.title = element_blank(),
        panel.background = element_blank(),
        axis.ticks.x = element_blank()) +
  labs(x = "", y = "Error (estimated - real mutation efficiency) [%]") +
  scale_y_continuous(breaks = c(-4:2), labels = math_format(10^.x))
ggsave("../figures/fig_2_log.png", p, dpi = 400, width = 17, height = 7)
ggsave("../figures/fig_2_log.pdf", p, dpi = 400, width = 17, height = 7)

off$Truth <- as.numeric(gsub("%", "", off$Truth))
off$value <- abs(off$value - off$Truth)
off$value_log <- log10(off$value)
off$value_log[!is.finite(off$value_log)] <- 0

off_medians <- off %>% 
  group_by(variable, desc, desc2) %>% 
  summarise(median = median(value),
            val_min = min(value),
            val_max = max(value))
off_medians_log <- off %>% 
  group_by(variable, desc, desc2) %>% 
  summarise(median = median(value_log),
            val_min = min(value_log),
            val_max = max(value_log))
off$variable <- factor(off$variable, levels = tools, ordered = TRUE)
off_medians$variable <- factor(off_medians$variable, levels = tools, ordered = TRUE)
off_medians_log$variable <- factor(off_medians_log$variable, levels = tools, ordered = TRUE)

p <- ggplot(off, aes(desc, value, colour = variable)) +
  geom_point(alpha = 0.2, position = position_dodge(width = 0.9)) +
  geom_errorbar(data = off_medians, aes(x = desc, y = median, ymin = median, 
                                        ymax = median, colour = variable),
                position = position_dodge(width = 0.9)) +
  facet_grid(. ~ desc2, scales = "free_x", space = "free_x") +
  scale_colour_manual(aes(variable), values = tools_col) +
  theme(text = element_text(size = 24),
        legend.position = "bottom",
        legend.title = element_blank(),
        panel.background = element_blank(),
        axis.ticks.x = element_blank()) +
  labs(x = "", y = "Error (estimated - real mutation efficiency) [%]")
p
ggsave("../figures/error_crisprvaraints_dataset.png", p, dpi = 400, width = 17, height = 8)
ggsave("../figures/error_crisprvaraints_dataset.pdf", p, dpi = 400, width = 17, height = 8)

p <- ggplot(off, aes(desc, value_log, colour = variable)) +
  geom_point(alpha = 0.2, position = position_dodge(width = 0.9)) +
  geom_errorbar(data = off_medians_log, aes(x = desc, y = median, ymin = median, 
                                        ymax = median, colour = variable),
                position = position_dodge(width = 0.9)) +
  facet_grid(. ~ desc2, scales = "free_x", space = "free_x") +
  scale_colour_manual(aes(variable), values = tools_col) +
  theme(text = element_text(size = 24),
        legend.position = "bottom",
        legend.title = element_blank(),
        panel.background = element_blank(),
        axis.ticks.x = element_blank()) +
  labs(x = "", y = "Error (estimated - real mutation efficiency) [%]") + 
  scale_y_continuous(breaks = c(-4:2), labels = math_format(10^.x))
ggsave("../figures/error_crisprvaraints_dataset_log.png", p, dpi = 400, width = 17, height = 8)
ggsave("../figures/error_crisprvaraints_dataset_log.pdf", p, dpi = 400, width = 17, height = 8)

# facet on percentage vs mutation rate
stacked <- rbind(roff_01, roff_02, roff_03)
stacked$NOfftargets <- factor(stacked$NOfftargets, levels = c("0", "10", "25"), ordered = TRUE)
stacked$Truth <- factor(stacked$Truth, levels = rev(c("0", "33.3%", "66.7%", "90%")), ordered = TRUE)
stacked$variable <- factor(stacked$variable, levels = tools, ordered = TRUE)
hlined <- data.frame(lvalue = rep(c(0, 33.3, 66.7, 90), each = 3),
                     Truth = rep(c("0", "33.3%", "66.7%", "90%"), each = 3),
                     desc = as.character(rep(c("10%", "20%", "30%"), 4)))

p <- ggplot(stacked, aes(NOfftargets, value, colour = variable)) +
  geom_point(alpha = 0.3, position = position_dodge(width = 0.9), size = 4) +
  facet_grid(Truth ~ desc, scales = "free_x", space = "free_x") +
  scale_colour_manual(aes(variable), values = tools_col) +
  theme(text = element_text(size = 24),
        legend.position = "bottom",
        legend.title = element_blank()) +
  labs(x = "Contamination [%]", y = "Estimated mutation efficiency [%]") +
  geom_hline(data = hlined, aes(yintercept = lvalue), linetype = "dotted")
library(gtable)  
library(grid) 
p <- ggplotGrob(p)
p <- gtable_add_rows(p, p$height[6], pos = 5)
gtable_show_layout(p)
p <- gtable_add_grob(p, 
                     list(rectGrob(gp = gpar(col = NA, fill = "gray85", size = .5)),
                          textGrob("Off-target mismatch rate", gp = gpar(cex = 1.5, col = gray(0)))), 
                     t = 6, l=4, b=6, r=8, name = c("a", "b"))
# Add small gap between strips - below row 6
p <- gtable_add_rows(p, unit(2/10, "line"), 6)

p <- gtable_add_cols(p, p$widths[9], pos = 10)
gtable_show_layout(p)
p <- gtable_add_grob(p, 
                     list(rectGrob(gp = gpar(col = NA, fill = "gray85", size = .5)),
                          textGrob("Real mutation efficiency", 
                                   rot = -90, gp = gpar(cex = 1.5, col = gray(0)))), 
                     t = 9, l=11, b=15, r=11, name = c("a", "b"))
# Add small gap between strips - below row 6
p <- gtable_add_cols(p, unit(2/10, "line"), 9)

# Draw it
grid.newpage()
grid.draw(p)

ggsave("../figures/mutation_efficiency_mutation rate.png", p, dpi = 400, width = 12, height = 10)
ggsave("../figures/mutation_efficiency_mutation rate.pdf", p, dpi = 400, width = 12, height = 10)