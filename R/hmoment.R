# HMOMENT
# This function compute the hmoment based on Eisenberg, D., Weiss, R. M., & Terwilliger, T. C. (1984). 
# The hydrophobic moment detects periodicity in protein hydrophobicity. 
# Proceedings of the National Academy of Sciences of the United States of America, 81(1), 140–4.

hmoment<-function(seq,angle=100,window=11){
  # Load hydrophobicity scale
  data(H,envir = environment())
  h<-H[["Eisenberg"]]
  # Spliting the sequence
  aa<-strsplit(toupper(seq),"")[[1]]
  window<-min(length(aa),window)
  # Setting the sequences
  pep<-embed(aa,window)
  # Evaluating angles and functions
  angle<- angle*(pi/180)*1:window
  vcos<-h[t(pep)]*cos(angle)
  vsin<-h[t(pep)]*sin(angle)
  dim(vcos)<-dim(vsin)<-dim(t(pep))
  vcos<-colSums(vcos)
  vsin<-colSums(vsin)
  # Applying the moment function to each 10 amino acids window
  # Return the max value
  max(sqrt(vsin*vsin + vcos*vcos)/window)
}
