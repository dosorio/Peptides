#' @export crucianiProperties
#' @title Compute the Cruciani properties of a protein sequence
#' @description This function calculates the Cruciani properties of an amino-acids sequence using the scaled principal component scores that summarize a broad set of descriptors calculated based on the interaction of each amino acid residue with several chemical groups (or "probes"), such as charged ions, methyl, hydroxyl groups, and so forth.
#' @param seq An amino-acids sequence
#' @return The computed average of Cruciani properties of all the amino acids in the corresponding peptide sequence. Each PP represent an amino-acid property as follows: \itemize{\item{PP1:} Polarity, \item{PP2:} Hydrophobicity, \item{PP3:} H-bonding}
#' @references Cruciani, G., Baroni, M., Carosati, E., Clementi, M., Valigi, R., and Clementi, S. (2004) Peptide studies by means of principal properties of amino acids derived from MIF descriptors. J. Chemom. 18, 146-155.
#' @examples crucianiProperties(seq = "QWGRRCCGWGPGRRYCVRWC")
#' #     PP1     PP2     PP3
#' #  -0.1130 -0.0220  0.2735
crucianiProperties <- function(seq) {
  # Remove spaces and line breaks
  seq <- aaCheck(seq)
  
  # Load Cruciani Properties
  properties <- AAdata$crucianiProperties
  
  # Calculate averages
  lapply(seq, function(seq) {
    sapply(names(properties), function(property) {
      (sum(properties[[property]][seq])/length(seq))
    })
  })
}
