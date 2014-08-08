# AACOMP
# Compute the amount of amino acids of a particular class and reported as:
# Tiny, Small, Aliphatic, Aromatic, Non Polar, Polar, Charged, Basic and Acid
# This function is the same implemented in EMBOSS "pepstat"
# EMBOSS function: Copyright (C) Alan Bleasby (ajb@ebi.ac.uk)

aacomp<-function(seq){
  AA<-matrix(ncol = 2,nrow = 9)
  seq1<-table(s2c(seq))
  AA[1,1]<-round(sum(seq1[c("A","C","G","S","T")],na.rm = TRUE),2)
  AA[2,1]<-round(sum(seq1[c("A","B","C","D","G","N","P","S","T","V")],na.rm = TRUE),2)
  AA[3,1]<-round(sum(seq1[c("A","I","L","V")],na.rm = TRUE),2)
  AA[4,1]<-round(sum(seq1[c("F","H","W","Y")],na.rm = TRUE),2)
  AA[5,1]<-round(sum(seq1[c("A","C","F","G","I","L","M","P","V","W","Y")],na.rm = TRUE),2)
  AA[6,1]<-round(sum(seq1[c("D","E","H","K","N","Q","R","S","T","Z")],na.rm = TRUE),2)
  AA[7,1]<-round(sum(seq1[c("B","D","E","H","K","R","Z")],na.rm = TRUE),2)
  AA[8,1]<-round(sum(seq1[c("H","K","R")],na.rm = TRUE),2)
  AA[9,1]<-round(sum(seq1[c("B","D","E","Z")],na.rm = TRUE),2)
  AA[,2]<-round((AA[,1]/nchar(seq)*100),2)
  rownames(AA)<-c("Tiny","Small","Aliphatic","Aromatic","NonPolar","Polar","Charged","Basic","Acidic")
  colnames(AA)<-c("Number","Mole%")
  return(AA)
}
