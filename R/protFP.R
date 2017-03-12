#' @export protFP
#' @title Compute the protFP descriptors of a protein sequence
#' @description The ProtFP descriptor set was constructed from a large initial selection of indices obtained from the AAindex database for all 20 naturally occurring amino acids.
#' @references van Westen, G. J., Swier, R. F., Wegner, J. K., IJzerman, A. P., van Vlijmen, H. W., & Bender, A. (2013). Benchmarking of protein descriptor sets in proteochemometric modeling (part 1): comparative study of 13 amino acid descriptor sets. Journal of cheminformatics, 5(1), 41.
#' @param seq An amino-acids sequence
#' @return The computed average of protFP descriptors of all the amino acids in the corresponding peptide sequence.
#' @examples protFP(seq = "QWGRRCCGWGPGRRYCVRWC")
#' # [[1]]
#' # ProtFP1 ProtFP2 ProtFP3 ProtFP4 ProtFP5 ProtFP6 ProtFP7 ProtFP8 
#' # 0.2065 -0.0565  1.9930 -0.2845  0.7315  0.7000  0.1715  0.1135 

protFP <- function(seq){
  # Split sequences by amino acids - Remove spaces and line breaks
  seq <- aaCheck(seq)
  
  # Load the ProtFP descriptors
  descriptors <- AAdata$ProtFP
  
  # Computes the ProtFP descriptors for given sequences
  lapply(seq, function(seq) {
    sapply(names(descriptors), function(scale) {
      (sum(descriptors[[scale]][seq], na.rm = TRUE) / length(seq))
    })
  })
}