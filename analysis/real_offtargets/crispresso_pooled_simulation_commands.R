rm(list=ls(all = TRUE))
gc(reset=TRUE)

sim_freq <- c(0.1, 0.2, 0.3)

for (w in seq_along(sim_freq)) {

sim_files <- list.files(paste0("./real_offtargets/simulation_", sim_freq[w]), pattern = ".*sim1.fq", full.names = TRUE)
condition <- gsub(".*_([0-9]+mut.*readlen).*", "\\1", sim_files)
guides <- gsub("(.*)_[0-9]+mut.*", "\\1", basename(sim_files))

splits <- split(sim_files, factor(condition, levels = unique(condition)))
split_gds <- split(guides, condition)

out_template <- paste0("./real_offtargets/simulation_", sim_freq[w], "/merged/%s_%s.fq")

reformat_fq <- function(fq, out_f, guide, line_brk){
    fq_lines <- readLines(fq)
    headers <- seq(1,length(fq_lines), by = 4)
    fq_lines[headers] <- gsub("^@", sprintf("@%s_", guide), fq_lines[headers])
    fq_lines <- paste(fq_lines, collapse = "\n")
    if (line_brk){ fq_lines <- paste0("\n", fq_lines) }
    cat(fq_lines, file = out_f, append = TRUE)
    return(NULL)
}

for (i in seq_along(splits)) {
  name <- names(splits)[i]
  outf1 <- sprintf(out_template, name, "sim1")
  outf2 <- sprintf(out_template, name, "sim2")
  line_brk <- FALSE
  for (j in seq_along(splits[[i]])){
    if (j == 2){ line_brk <- TRUE }
    fname <- splits[[i]][j]
    guide <- split_gds[[i]][j]
    reformat_fq(fname, outf1, guide, line_brk)
    reformat_fq(gsub("sim1","sim2", fname), outf2, guide, line_brk)
  }
}


r1s <- sprintf(out_template, names(splits), "sim1")
r2s <- sprintf(out_template, names(splits), "sim2")
nr1s <- length(r1s)
idx <- rep("./idx/danRer7.fa", nr1s)
amplicons_f <- rep(paste0("./real_offtargets/simulation_", sim_freq[w],"/merged/crispresso_pooled_amplicons.txt"), nr1s)
pooled_template <- "CRISPRessoPooled -r1 %s -r2 %s -f %s -x %s --name %s -p 4 --window_around_sgrna 5"
cmds <- paste(sprintf(pooled_template, r1s, r2s, amplicons_f, idx, names(splits)),
          collapse = "\n")
cat(cmds, file = paste0("./real_offtargets/crispresso_pooled_simulation_", sim_freq[w], "_commands.sh"))
cat(paste0("\n\nmv CRISPRessoPooled_on_* ./real_offtargets/simulation_", sim_freq[w], "/merged/"), 
    file = paste0("./real_offtargets/crispresso_pooled_simulation_", sim_freq[w], "_commands.sh"), append = TRUE)
}
