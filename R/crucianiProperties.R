#' @export crucianiProperties
#' @title Compute the Cruciani properties of a protein sequence
#' @description This function calculates the Cruciani properties of an amino-acids sequence using the scaled principal component scores that summarize a broad set of descriptors calculated based on the interaction of each amino acid residue with several chemical groups (or "probes"), such as charged ions, methyl, hydroxyl groups, and so forth.
#' @param seq An amino-acids sequence
#' @return The computed average of Cruciani properties of all the amino acids in the corresponding peptide sequence. Each PP represent an amino-acid property as follows: \itemize{\item{PP1:} Polarity, \item{PP2:} Hydrophobicity, \item{PP3:} H-bonding}
#' @references Cruciani, G., Baroni, M., Carosati, E., Clementi, M., Valigi, R., and Clementi, S. (2004) Peptide studies by means of principal properties of amino acids derived from MIF descriptors. J. Chemom. 18, 146-155.
#' @examples crucianiProperties("QWGRRCCGWGPGRRYCVRWC")
#' #     PP1     PP2     PP3 
#' #  -0.1130 -0.0220  0.2735 
crucianiProperties <- function(seq) {
  # Remove spaces and line breaks
  seq <- gsub("[[:space:]]+", "", seq)
  # Load Cruciani Properties
  utils::data(CP, envir = environment())
  CP <- CP
  # Split sequence
  seq <- strsplit(toupper(seq), split = "")
  # Calculate averages
  lapply(seq, function(seq) {
    c(PP1 = mean(CP[["PP1"]][seq]),
      PP2 = mean(CP[["PP2"]][seq]),
      PP3 = mean(CP[["PP3"]][seq]))
  })
}