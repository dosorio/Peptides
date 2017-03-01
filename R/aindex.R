#' @export aindex
#' @title Compute the aliphatic index of a protein sequence
#' @description This function calculates the Ikai (1980) aliphatic index of a protein. The \code{aindex} is defined as the relative volume occupied by aliphatic side chains (Alanine, Valine, Isoleucine, and Leucine). It may be regarded as a positive factor for the increase of thermostability of globular proteins.
#' @param seq An amino-acids sequence
#' @return The computed aliphatic index for a given amino-acids sequence
#' @references Ikai (1980). Thermostability and aliphatic index of globular proteins. Journal of Biochemistry, 88(6), 1895-1898.
#' @details Aliphatic amino acids (A, I, L and V) are responsible for the thermal stability of proteins. The aliphatic index was proposed by Ikai (1980) and evaluates the thermostability of proteins based on the percentage of each of the aliphatic amino acids that build up proteins.
#' @examples # COMPARED TO ExPASy ALIPHATIC INDEX
#' # http://web.expasy.org/protparam/
#' # SEQUENCE: SDKEVDEVDAALSDLEITLE
#' # Aliphatic index: 117.00
#' 
#' aindex("SDKEVDEVDAALSDLEITLE")
#' # [1] 117

aindex <- function(seq) {
  seq <- gsub("[[:space:]]+", "", seq)
  # Divide the amino acid sequence and extracts the relative frequency of Alanine, Valine, Leucine and Isoleucine
  seq <-
    lapply(seq, function(seq) {
      table(unlist(strsplit(seq, ""))) / nchar(seq)
    })
  # Aliphatic index = X(Ala) + a * X(Val) + b * ( X(Ile) + X(Leu) )
  # where X(Ala), X(Val), X(Ile), and X(Leu) are mole percent (100 X mole fraction)
  # of alanine, valine, isoleucine, and leucine.
  # The coefficients a and b are the relative volume of valine side chain (a = 2.9)
  # and of Leu/Ile side chains (b = 3.9) to the side chain of alanine.
  aliphatic <-
    unlist(lapply(seq, function(seq) {
      sum(c(seq["A"], (2.9 * seq["V"]), 3.9 * seq[c("L", "I")]), na.rm = T) *
        100
    }))
  return(aliphatic)
}
