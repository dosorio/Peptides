# aindex
# This function compute the aliphatic index based on Ikai (1980).
# Thermostability and aliphatic index of globular proteins.
# Journal of Biochemistry, 88(6), 1895-1898.

aindex <- function(seq){
  seq <- .remove_spaces(seq)
  # Extract the frequency of Alanine, Valine, Leucine and Isoleucine
  A <- stri_count_fixed(seq, "A")
  V <- stri_count_fixed(seq, "V")
  L <- stri_count_fixed(seq, "L")
  I <- stri_count_fixed(seq, "I")

  # Aliphatic index = X(Ala) + a * X(Val) + b * ( X(Ile) + X(Leu) )
  # where X(Ala), X(Val), X(Ile), and X(Leu) are mole percent (100 X mole fraction)
  # of alanine, valine, isoleucine, and leucine.
  # The coefficients a and b are the relative volume of valine side chain (a = 2.9)
  # and of Leu/Ile side chains (b = 3.9) to the side chain of alanine.

  # Return the result as percentage
  100 * sum(c(A + 2.9 * V + 3.9 * (L + I))) / nchar(seq)
}
