# MEMBPOS
# This function compute the class of a protein based in their Hydrophobicity and Hydrophobic moment
# Eisenberg, D. (1984). Three-dimensional structure of membrane and surface proteins. 
# Annual Review of Biochemistry, 53, 595–623. doi:10.1146/annurev.bi.53.070184.003115

membpos<-function(seq,angle=100){ 
  # Setting input length
  aa<-strsplit(toupper(seq),"")[[1]]
  window<-min(length(aa),11)
  pep<-rep(NA,nchar(seq)-window)
  for (i in 1: (nchar(seq)-window)){
    pep[i]<-paste(aa[i:(i+window)],collapse = "")
  }
  # Compute the hmoment and hydrophobicity for each amino acid window
  data<-as.data.frame(matrix(nrow = length(pep),ncol = 5))
  data[,1]<-pep
  data[,2]<-round(as.vector(sapply(pep,function(x)hydrophobicity(x,"Eisenberg"))),3)
  data[,3]<-round(as.vector(sapply(pep,function(x)hmoment(x,angle,window))),3)
  data[,4]<-(data[,2]*-0.421)+0.579
  colnames(data)<-c("Pep","H","uH","m","MembPos")
  # Assigns a class depending on the hydrophobicity and hmoment
  data[which(data$uH<=data$m & data$H>=0.5),5]<-"Transmembrane"
  data[which(data$uH<=data$m & data$H<=0.5),5]<-"Globular"
  data[which(data$uH>=data$m),5]<-"Surface"
  return(data[-4])
}