# aindex
# This function compute the aliphatic index based on Ikai (1980).
# Thermostability and aliphatic index of globular proteins.
# Journal of Biochemistry, 88(6), 1895-1898.

aindex<-function(seq){
  seq<-gsub("[\r\n ]","",seq)
  # Divide the amino acid sequence and extracts the relative frequency of Alanine, Valine, Leucine and Isoleucine
  p<-table(strsplit(toupper(seq),"")[[1]])/nchar(seq)

  # Aliphatic index = X(Ala) + a * X(Val) + b * ( X(Ile) + X(Leu) )
  # where X(Ala), X(Val), X(Ile), and X(Leu) are mole percent (100 X mole fraction)
  # of alanine, valine, isoleucine, and leucine.
  # The coefficients a and b are the relative volume of valine side chain (a = 2.9)
  # and of Leu/Ile side chains (b = 3.9) to the side chain of alanine.

  # Return the result as percentage rounded to 2 decimals
  sum(c(p["A"],(2.9*p["V"]),3.9*p[c("L","I")]),na.rm=T)*100
}
