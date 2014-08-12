# ALIPHATIC INDEX
# This function compute the aliphatic index based on Ikai (1980). 
# Thermostability and aliphatic index of globular proteins. Journal of Biochemistry, 88(6), 1895-1898.

aindex<-function(seq){
  p<-(table(factor(s2c(seq),levels = c("A","V","L","I")))/nchar(seq))
  round(sum(c(p["A"],(2.9*p["V"]),3.9*p[c("L","I")]),na.rm=T)*100,2)
}