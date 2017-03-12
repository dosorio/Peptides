#' @export blosumIndices
#' @title Compute the BLOSUM62 derived indices of a protein sequence
#' @description BLOSUM indices were derived of physicochemical properties that have been subjected to a VARIMAX analyses and an alignment matrix of the 20 natural AAs using the BLOSUM62 matrix.
#' @references Georgiev, A. G. (2009). Interpretable numerical descriptors of amino acid space. Journal of Computational Biology, 16(5), 703-723.
#' @param seq An amino-acids sequence
#' @return The computed average of BLOSUM indices of all the amino acids in the corresponding peptide sequence.
#' @examples blosumIndices(seq = "KLKLLLLLKLK")
#' # [[1]]
#' #   BLOSUM1    BLOSUM2    BLOSUM3    BLOSUM4    BLOSUM5    
#' # -0.4827273 -0.5618182 -0.8509091 -0.4172727  0.3172727  
#' 
#' #  BLOSUM6   BLOSUM7     BLOSUM8    BLOSUM9   BLOSUM10 
#' # 0.2527273  0.1463636  0.1427273 -0.2145455 -0.3218182 
#' 
blosumIndices <- function(seq) {

  # Split the sequence by amino-acids
  # Remove spaces and line breaks
  seq <- aaCheck(seq)
  
  # Load the BLOSUM indices
  scales <- AAdata$BLOSUM
  
  # Computes the BLOSUM indices for given sequences
  lapply(seq, function(seq) {
    sapply(names(scales), function(scale) {
      (sum(scales[[scale]][seq], na.rm = TRUE) / length(seq))
    })
  })
}