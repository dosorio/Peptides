# hmoment
# This function compute the hmoment based on Eisenberg, D., Weiss, R. M., & Terwilliger, T. C. (1984).
# The hydrophobic moment detects periodicity in protein hydrophobicity.
# Proceedings of the National Academy of Sciences of the United States of America, 81(1), 140-4.
# This function was written by an anonymous reviewer of the RJournal

hmoment<-function(seq,angle=100,window=11){
  # Loading hydrophobicity scale
  seq<-gsub("[\r\n ]","",seq)
  data(H,envir = environment())
  H<-H
  h<-H[["Eisenberg"]]
  # Splitting the sequence in amino acids
  aa<-strsplit(toupper(seq),"")[[1]]
  window<-min(length(aa),window)
  # Setting the sequence length
  pep<-embed(aa,window)
  # Applying the hmoment function to each amino acids window
  angle<- angle*(pi/180)*1:window
  vcos<-h[t(pep)]*cos(angle)
  vsin<-h[t(pep)]*sin(angle)
  dim(vcos)<-dim(vsin)<-dim(t(pep))
  vcos<-colSums(vcos,na.rm = TRUE)
  vsin<-colSums(vsin,na.rm = TRUE)
  # Return the max value
  max(sqrt(vsin*vsin + vcos*vcos)/window)
}
