# ALIPHATIC INDEX
# This function compute the aliphatic index based on Ikai (1980). 
# Thermostability and aliphatic index of globular proteins. 
# Journal of Biochemistry, 88(6), 1895-1898.

aindex<-function(seq){
  # Divide the amino acid sequence and extracts the relative frequency of Alanine, Valine, Leucine and Isoleucine
  p<-(table(factor(s2c(seq),levels = c("A","V","L","I")))/nchar(seq))
  # Apply the formula: AI = X_A + 2.9*X_V +3.9*(X_I +X_L)
  # Return the result as percentage rounded to 2 decimals
  round(sum(c(p["A"],(2.9*p["V"]),3.9*p[c("L","I")]),na.rm=T)*100,2)
}