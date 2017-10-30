rm(list=ls(all = TRUE))
gc(reset=TRUE)

library(Biostrings)

set.seed(42)
randACTG <- function(width) {
  ins <- sample(c("A","C","T","G"), width, replace = TRUE)
  paste0(ins, collapse = "")
}

read_del_ins <- paste0("GTGGTCAGGG", randACTG(20), "ATACCCT", collapse = "")
reference <- "GTGGTCAGGGAACTGGTGGAGGTCACTGGGATACCCT"

del_ins_norm <- pairwiseAlignment(DNAString(read_del_ins), DNAString(reference),
                                  type = "overlap",
                                  gapOpening = 10,
                                  gapExtension = 2,
                                  substitutionMatrix =
                                    Biostrings::nucleotideSubstitutionMatrix(
                                      match = 5, mismatch = -4, baseOnly = TRUE, type = "DNA"))
writePairwiseAlignments(del_ins_norm)

del_ins_adj <- pairwiseAlignment(DNAString(read_del_ins), DNAString(reference),
                           type = "overlap",
                           gapOpening = 25,
                           gapExtension = 0,
                           substitutionMatrix =
                             Biostrings::nucleotideSubstitutionMatrix(
                               match = 5, mismatch = -4, baseOnly = TRUE, type = "DNA"))
writePairwiseAlignments(del_ins_adj)
