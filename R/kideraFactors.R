#' @export kideraFactors
#' @importFrom utils data
#' @title Compute the Kidera factors of a protein sequence
#' @description The Kidera Factors were originally derived by applying multivariate analysis to 188 physical properties of the 20 amino acids and using dimension reduction techniques. This function calculates the average of the ten Kidera factors for a protein sequence.
#' @param seq An amino-acids sequence
#' @return A list with the average of the ten Kidera factors. 
#' The first four factors are essentially pure physical properties; the remaining six factors are superpositions of several physical properties, and are labelled for convenience by the name of the most heavily weighted component.
#' \itemize{\item{Helix/bend preference},
#' \item{Side-chain size},
#' \item{Extended structure preference},
#' \item{Hydrophobicity},
#' \item{Double-bend preference},
#' \item{Partial specific volume},
#' \item{Flat extended preference},
#' \item{Occurrence in alpha region},
#' \item{pK-C},
#' \item{Surrounding hydrophobicity}}
#' @references Kidera, A., Konishi, Y., Oka, M., Ooi, T., & Scheraga, H. A. (1985). Statistical analysis of the physical properties of the 20 naturally occurring amino acids. Journal of Protein Chemistry, 4(1), 23-55.
#' @examples 
#' kideraFactors(seq = "KLKLLLLLKLK")
#' # [[1]]
#' # helix.bend.pref      side.chain.size    extended.str.pref      
#' #   -0.78545455          0.29818182        -0.23636364          
#' # hydrophobicity     double.bend.pref     partial.spec.vol 
#' #   -0.08181818          0.21000000        -1.89363636 
#' # flat.ext.pref     occurrence.alpha.reg         pK.C       
#' #   1.02909091          -0.51272727          0.11181818    
#' # surrounding.hydrop 
#' #   0.81000000 

kideraFactors <- function (seq) {
  # Remove the break lines from the sequence
  seq <- gsub("[[:space:]]+", "", seq)
  # Load the KFactors data
  data(K, envir = environment())
  K <- K
  # Compute the selected Kidera factor.
  seq <- lapply(seq, function(seq) {
    unlist(strsplit(seq, ""))
  })
  kFactors <- lapply(seq, function(seq) {
    sapply(names(K), function(factor) {
      sum(K[[factor]][seq], na.rm = TRUE) / length(seq)
    })
  })
  return(kFactors)
}
