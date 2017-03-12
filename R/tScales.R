#' @export tScales
#' @title Compute the T-scales of a protein sequence
#' @description T-scales are based on 67 common topological descriptors of 135 amino acids. These topological descriptors are based on the connectivity table of amino acids alone, and to not explicitly consider 3D properties of each structure.
#' @references Tian F, Zhou P, Li Z: T-scale as a novel vector of topological descriptors for amino acids and its application in QSARs of peptides. J Mol Struct. 2007, 830: 106-115. 10.1016/j.molstruc.2006.07.004.
#' @param seq An amino-acids sequence
#' @return The computed average of T-scales of all the amino acids in the corresponding peptide sequence.
#' @examples tScales(seq = "QWGRRCCGWGPGRRYCVRWC")
#' # [[1]]
#' #    T1      T2      T3      T4      T5 
#' # -3.2700 -0.0035 -0.3855 -0.1475  0.7585 

tScales <- function(seq){
  # Split the sequence by amino-acids - Remove spaces and line breaks
  seq <- aaCheck(seq)
  
  # Load the T-scales
  scales <- AAdata$tScales
  
  # Computes the T-scales for given sequences
  lapply(seq, function(seq) {
    sapply(names(scales), function(scale) {
      (sum(scales[[scale]][seq], na.rm = TRUE) / length(seq))
    })
  })
}