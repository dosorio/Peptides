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
  hydrophobicity_scores <- e$H[[scale]]
  # For each amino acid, its score is the hydro. score times the number of 
  # occurences
  amino_acid_scores <- vapply(
    names(hydrophobicity_scores),
    function(aa)
    {
      hydrophobicity_scores[aa] * stri_count_fixed(seq, aa)
    },
    numeric(length(seq))
  )
  # Sum the hydrophobicity of each amino acid and divide them between the sequence length
  # Return the GRAVY value
  sum_fn <- if(is.matrix(amino_acid_scores)) rowSums else sum
  sum_fn(amino_acid_scores) / nchar(seq)
}
