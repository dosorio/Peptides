#' @export fasgaiVectors
#' @title Compute the FASGAI vectors of a protein sequence
#' @description The FASGAI vectors (Factor Analysis Scales of Generalized Amino Acid Information) are based in involved hydrophobicity, alpha and turn propensities, bulky properties, composition characteristics, local flexibility, and electronic properties of 335 properties that can be utilized to represent the sequence structural features of peptides or protein motifs.
#' @param seq An amino-acids sequence
#'
#' @return

#'
#' @examples
fasgaiVectors <- function(seq) {
  # Remove spaces and line breaks
  seq <- gsub("[[:space:]]+","",as.vector(seq))
  
  # Split the sequence by amino-acids
  seq <- strsplit(seq, "")
  
  # Load the FASGAI vectors
  vectors <- get(data("AA",envir = environment()))$FASGAI
  
  # Computes the FASGAI vectors for given sequences
  lapply(seq, function(seq) {
    sapply(names(vectors), function(scale) {
      (sum(vectors[[scale]][seq], na.rm = TRUE) / length(seq))
    })
  })
}