#' @export vhseScales
#' @title Compute the VHSE-scales of a protein sequence
#' @description VHSE-scales (principal components score Vectors of Hydrophobic, Steric, and Electronic properties), is derived from principal components analysis (PCA) on independent families of 18 hydrophobic properties, 17 steric properties, and 15 electronic properties, respectively, which are included in total 50 physicochemical variables of 20 coded amino acids.
#' @references Mei, H. U., Liao, Z. H., Zhou, Y., & Li, S. Z. (2005). A new set of amino acid descriptors and its application in peptide QSARs. Peptide Science, 80(6), 775-786.
#' @param seq An amino-acids sequence
#' @return The computed average of VHSE-scales of all the amino acids in the corresponding peptide sequence. Each VSHE-scale represent an amino-acid property as follows: \itemize{
#' \item{VHSE1 and VHSE2:} Hydrophobic properties
#' \item{VHSE3 and VHSE4:} Steric properties
#' \item{VHSE5 to VHSE8:} Electronic properties
#' }
#' @examples vhseScales(seq = "QWGRRCCGWGPGRRYCVRWC")
#' # [[1]]
#' #  VHSE1   VHSE2   VHSE3   VHSE4   VHSE5   VHSE6   VHSE7   VHSE8 
#' #-0.1150  0.0630 -0.0055  0.7955  0.4355  0.2485  0.1740 -0.0960
#' 
vhseScales <- function(seq){
  # Split the sequence by amino-acids - Remove spaces and line breaks
  seq <- aaCheck(seq)
  
  # Load the VHSE-scales
  scales <- AAdata$VHSE
  
  # Computes the VHSE-scales for given sequences
  lapply(seq, function(seq) {
    sapply(names(scales), function(scale) {
      (sum(scales[[scale]][seq], na.rm = TRUE) / length(seq))
    })
  })
}