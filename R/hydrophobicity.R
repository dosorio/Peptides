# hydrophobicity
# This function compute the GRAVY hydrophobicity index using 22 different hydrophobicity scales.
# The hydrophobicity scales are the same implemented in ExPASy "ProtScale"
# The function is the reported in Kyte, J., & Doolittle, R. F. (1982).
# A simple method for displaying the hydropathic character of a protein.
# Journal of Molecular Biology, 157(1), 105-32.

hydrophobicity <- function(seq, scale = "KyteDoolittle") {
  seq <- gsub("[[:space:]]", "", seq)
  # Loading hydrophobicity scales
  data(H, envir = environment())
  H <- H
  # Setting the hydrophobicity scale
  scale <- match.arg(scale, names(H))
  # Sum the hydrophobicity of each amino acid and divide them between the sequence length
  # Return the GRAVY value
  h <-
    lapply(seq, function(seq) {
      (sum(H[[scale]][unlist(strsplit(seq, ""))], na.rm = TRUE) / nchar(seq))
    })
  return(unlist(h))
}
