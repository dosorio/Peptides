#' @export boman
#' @title Compute the Boman (Potential Protein Interaction) index
#' @description This function computes the potential protein interaction index proposed by Boman (2003) based in the amino acid sequence of a protein. 
#' The index is equal to the sum of the solubility values for all residues in a sequence, it might give an overall estimate of the potential of a peptide to bind to membranes or other proteins as receptors, to normalize it is divided by the number of residues. 
#' A protein have high binding potential if the index value is higher than 2.48.
#' @param seq An amino-acid sequence
#' @return The computed potential protein-protein interaction for a given amino-acids sequence
#' @references Boman, H. G. (2003). Antibacterial peptides: basic facts and emerging concepts. Journal of Internal Medicine, 254(3), 197-215.
#' @details The potential protein interaction index was proposed by Boman (2003) as an easy way to differentiate the action mechanism of hormones (protein-protein) and antimicrobial peptides (protein-membrane) through this index. This function predicts the potential peptide interaction with another protein.
#' @examples 
#' # COMPARED TO YADAMP DATABASE
#' # http://yadamp.unisa.it/showItem.aspx?yadampid=845&x=0,4373912
#' # SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
#' # BOMAN INDEX  -1.24  
#'
#' boman("FLPVLAGLTPSIVPKLVCLLTKKC")
#' # [1] -1.235833
#' 
boman <- function(seq) {
  seq <- gsub("[[:space:]]", "", seq)
  # Create the Boman scale vector
  boman <-
    c(
      L = 4.92,
      I = 4.92,
      V = 4.04,
      F = 2.98,
      M = 2.35,
      W = 2.33,
      A = 1.81,
      C = 1.28,
      G = 0.94,
      Y = -0.14,
      T = -2.57,
      S = -3.40,
      H = -4.66,
      Q = -5.54,
      K = -5.55,
      N = -6.64,
      E = -6.81,
      D = -8.72,
      R = -14.92
    )
  # Asign a value to each amino acids in the sequence, sum the values and divide on amino acid sequence length
  # Report the index rounded to 2 decimals
  seq <- lapply(seq, function(seq) {
    unlist(strsplit(seq, ""))
  })
  bindex <- lapply(seq, function(seq) {
    return(-1 * sum(boman[seq], na.rm = TRUE) / length(seq))
  })
  return(unlist(bindex))
}
