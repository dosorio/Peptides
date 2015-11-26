# aacomp
# Compute the amount of amino acids of a particular class and reported as:
# Tiny, Small, Aliphatic, Aromatic, Non Polar, Polar, Charged, Basic and Acid
# This function is the same implemented in EMBOSS "pepstat"
# EMBOSS function: Copyright (C) Alan Bleasby (ajb@ebi.ac.uk)

aacomp<-function(seq){
  # Create data matrix output
  seq<-gsub("[\r\n ]","",seq)
  AA<-matrix(ncol = 2,nrow = 9)
  rownames(AA)<-c("Tiny","Small","Aliphatic","Aromatic","NonPolar","Polar","Charged","Basic","Acidic")
  colnames(AA)<-c("Number","Mole%")
  # Divide the amino acid sequence and makes a frequencies table
  seq1<-table(strsplit(toupper(seq),"")[[1]])
  # Classify amino acids in a particular class and sum the absolute frequencies
  AA[1,1]<-sum(seq1[c("A","C","G","S","T")],na.rm = TRUE)
  AA[2,1]<-sum(seq1[c("A","B","C","D","G","N","P","S","T","V")],na.rm = TRUE)
  AA[3,1]<-sum(seq1[c("A","I","L","V")],na.rm = TRUE)
  AA[4,1]<-sum(seq1[c("F","H","W","Y")],na.rm = TRUE)
  AA[5,1]<-sum(seq1[c("A","C","F","G","I","L","M","P","V","W","Y")],na.rm = TRUE)
  AA[6,1]<-sum(seq1[c("D","E","H","K","N","Q","R","S","T","Z")],na.rm = TRUE)
  AA[7,1]<-sum(seq1[c("B","D","E","H","K","R","Z")],na.rm = TRUE)
  AA[8,1]<-sum(seq1[c("H","K","R")],na.rm = TRUE)
  AA[9,1]<-sum(seq1[c("B","D","E","Z")],na.rm = TRUE)
  # Compute the relative frequencies for each class in percentage
  AA[,2]<-(AA[,1]/nchar(seq)*100)
  # Return output matrix rounded to 3 decimals
  return(round(AA,3))
}
