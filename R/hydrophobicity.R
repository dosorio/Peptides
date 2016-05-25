# hydrophobicity
# This function compute the GRAVY hydrophobicity index using 22 different hydrophobicity scales.
# The hydrophobicity scales are the same implemented in ExPASy "ProtScale"
# The function is the reported in Kyte, J., & Doolittle, R. F. (1982).
# A simple method for displaying the hydropathic character of a protein.
# Journal of Molecular Biology, 157(1), 105-32.

hydrophobicity <- function(seq, scale="KyteDoolittle"){
  seq <- .remove_spaces(seq)
  # Loading hydrophobicity scales
  e <- new.env()
  data(list = "H", package = "Peptides", envir = e)
  # Setting the hydrophobicity scale
  scale <- match.arg(scale, names(e$H))
  # Sum the hydrophobicity of each amino acid and divide them between the sequence length
  # Return the GRAVY value
  amino_acid_list <- .to_upper_chars(seq)
  hydrophobicity_scores <- e$H[[scale]]
  vapply(
    amino_acid_list,
    function(amino_acids)
    {
      sum(hydrophobicity_scores[amino_acids]) / length(amino_acids)
    },
    numeric(1)
  )
}
