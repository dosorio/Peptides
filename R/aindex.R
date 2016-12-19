# aindex
# This function compute the aliphatic index based on Ikai (1980).
# Thermostability and aliphatic index of globular proteins.
# Journal of Biochemistry, 88(6), 1895-1898.

aindex <- function(seq) {
  seq <- gsub("[[:space:]]", "", seq)
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
