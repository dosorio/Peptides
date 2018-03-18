#' @export stScales
#' @title Compute the ST-scales of a protein sequence
#' @description ST-scales were proposed by Yang et al, taking 827 properties into account which are mainly constitutional, topological, geometrical, hydrophobic, elec- tronic, and steric properties of a total set of 167 AAs. 
#' @references Yang, L., Shu, M., Ma, K., Mei, H., Jiang, Y., & Li, Z. (2010). ST-scale as a novel amino acid descriptor and its application in QSAM of peptides and analogues. Amino acids, 38(3), 805-816.
#' @param seq An amino-acids sequence
#' @return The computed average of ST-scales of all the amino acids in the corresponding peptide sequence.
#' @examples stScales(seq = "QWGRRCCGWGPGRRYCVRWC")
#' # [[1]]
#' # ST1      ST2      ST3      ST4      ST5      ST6      ST7      ST8
#' # -0.63760  0.07965  0.05150  0.07135 -0.27905 -0.80995  0.58020  0.54400

stScales <- function(seq){
  # Split the sequence by amino-acids - Remove spaces and line breaks
  seq <- aaCheck(seq)
  
  # Load the ST-scales
  scales <- AAdata$stScales
  
  # Computes the ST-scales for given sequences
  lapply(seq, function(seq) {
    sapply(names(scales), function(scale) {
      (sum(scales[[scale]][seq], na.rm = TRUE) / length(seq))
    })
  })
}