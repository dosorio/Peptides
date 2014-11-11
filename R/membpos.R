# MEMBPOS
# This function compute the class of a protein based in their Hydrophobicity and Hydrophobic moment
# Eisenberg, D. (1984). Three-dimensional structure of membrane and surface proteins. 
# Annual Review of Biochemistry, 53, 595–623. doi:10.1146/annurev.bi.53.070184.003115

membpos<-function(seq,angle,window=11){ 
  # Setting input length
  aa<-strsplit(toupper(seq),"")[[1]]
  window<-min(length(aa),window)
  pep<-embed(aa,window)
  # Compute the hmoment and hydrophobicity for each amino acid window
  data<-character(dim(pep)[[1]])
  data$Pep<-as.vector(Pep)
  data$H<-as.vector(sapply(Pep,function(x)hydrophobicity(x,"Eisenberg")))
  data$uH<-round(as.vector(sapply(Pep,function(x)hmoment(x,angle))),2)
  data$m<-((-0.421*data$H)+0.579)
  
  # Assigns a class depending on the hydrophobicity and hmoment
  for (i in 1: length(Pep)){
    if(data$uH[i]<=data$m[i] & data$H[i]>=0.5){
      data$MembPos[i]<-"Transmembrane"
    }else{
      if (data$uH[i]<=data$m[i] & data$H[i]<=0.5){
        data$MembPos[i]<-"Globular"
      }
      else{
        if(data$uH[i]>=data$m[i]){
          data$MembPos[i]<-"Surface"
        }
      }
    }
  }
  return(as.data.frame(data[-4]))
}