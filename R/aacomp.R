# aacomp
# Compute the amount of amino acids of a particular class and reported as:
# Tiny, Small, Aliphatic, Aromatic, Non Polar, Polar, Charged, Basic and Acid
# This function is the same implemented in EMBOSS "pepstat"
# EMBOSS function: Copyright (C) Alan Bleasby (ajb@ebi.ac.uk)

aacomp<-function(seq){
  # Remove space characters: tab, newline, vertical tab, form feed, carriage return, space and possibly other locale-dependent characters.
  seq <- gsub("[[:space:]]","",as.vector(seq))
  # Divide the amino acid sequence and makes a frequencies table
  seq <- lapply(seq, function(seq){table(unlist(strsplit(seq,"")))})
  # Applying composition function
  aacomp <- lapply(seq, function(seq){
    # Create data matrix output
    AA<-matrix(ncol = 2,nrow = 9)
    rownames(AA)<-c("Tiny","Small","Aliphatic","Aromatic","NonPolar","Polar","Charged","Basic","Acidic")
    colnames(AA)<-c("Number","Mole%")
    # Classify amino acids in a particular class and sum the absolute frequencies
    AA[1,1]<-sum(seq[c("A","C","G","S","T")],na.rm = TRUE)
    AA[2,1]<-sum(seq[c("A","B","C","D","G","N","P","S","T","V")],na.rm = TRUE)
    AA[3,1]<-sum(seq[c("A","I","L","V")],na.rm = TRUE)
    AA[4,1]<-sum(seq[c("F","H","W","Y")],na.rm = TRUE)
    AA[5,1]<-sum(seq[c("A","C","F","G","I","L","M","P","V","W","Y")],na.rm = TRUE)
    AA[6,1]<-sum(seq[c("D","E","H","K","N","Q","R","S","T","Z")],na.rm = TRUE)
    AA[7,1]<-sum(seq[c("B","D","E","H","K","R","Z")],na.rm = TRUE)
    AA[8,1]<-sum(seq[c("H","K","R")],na.rm = TRUE)
    AA[9,1]<-sum(seq[c("B","D","E","Z")],na.rm = TRUE)
    # Compute the relative frequencies for each class in percentage
    AA[,2]<-(AA[,1]/sum(seq)*100)
    return(round(AA,3))
  })
  # Return output matrix rounded to 3 decimals
  return(aacomp)
}
