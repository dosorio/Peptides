#' @export mswhimScores
#' @title Compute the MS-WHIM scores of a protein sequence
#' @description MS-WHIM scores were derived from 36 electrostatic potential properties derived from the three-dimensional structure of the 20 natural amino acids
#' @references Zaliani, A., & Gancia, E. (1999). MS-WHIM scores for amino acids: a new 3D-description for peptide QSAR and QSPR studies. Journal of chemical information and computer sciences, 39(3), 525-533.
#' @param seq An amino-acids sequence
#' @return The computed average of MS-WHIM scores of all the amino acids in the corresponding peptide sequence.
#' @examples mswhimScores(seq = "KLKLLLLLKLK")
#' # [[1]]
#' #  MSWHIM1    MSWHIM2    MSWHIM3 
#' # -0.6563636  0.4872727  0.1163636 

mswhimScores <- function(seq){
  # Remove spaces and line breaks
  # Split the sequence by amino-acids
  seq <- aaCheck(seq)
  
  # Load the MSWHIM scores
  scales <- AAdata$MSWHIM
  
  # Computes the MSWHIM scores for given sequences
  lapply(seq, function(seq) {
    sapply(names(scales), function(scale) {
      (sum(scales[[scale]][seq], na.rm = TRUE) / length(seq))
    })
  })
}