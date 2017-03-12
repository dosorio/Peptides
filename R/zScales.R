#' @export zScales
#' @title Compute the Z-scales of a protein sequence
#' @description Z-scales are based on physicochemical properties of the AAs including NMR data and thin-layer chromatography (TLC) data.
#' @references Sandberg M, Eriksson L, Jonsson J, Sjostrom M, Wold S: New chemical descriptors relevant for the design of biologically active peptides. A multivariate characterization of 87 amino acids. J Med Chem 1998, 41:2481-2491.
#' @param seq An amino-acids sequence
#'
#' @return The computed average of Z-scales of all the amino acids in the corresponding peptide sequence. Each Z scale represent an amino-acid property as follows:
#' \itemize{
#' \item{Z1:} Lipophilicity
#' \item{Z2:} Steric properties (Steric bulk/Polarizability)
#' \item{Z3:} Electronic properties (Polarity / Charge) 
#' \item{Z4 and Z5:} They relate electronegativity, heat of formation, electrophilicity and hardness.
#' }
#' @examples
#' zScales(seq = "QWGRRCCGWGPGRRYCVRWC")
#' # [[1]]
#' #  Z1      Z2      Z3      Z4      Z5 
#' # 0.6200  0.0865  0.0665  0.7280 -0.8740 
zScales <- function(seq) {
  # Split the sequence by amino-acids
  seq <- aaCheck(seq)
  
  # Load the Z-scales
  scales <- AAdata$zScales
  
  # Computes the Z-scales for given sequences
  lapply(seq, function(seq) {
    sapply(names(scales), function(scale) {
      (sum(scales[[scale]][seq], na.rm = TRUE) / length(seq))
    })
  })
}