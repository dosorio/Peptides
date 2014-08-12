membpos<-function(seq,angle){ 
  Pep<-data<-NULL
  if (nchar(seq)<11){
    Pep[1]<-(seq)
  } else {
    if(nchar(seq)>11){
      for (i in 1: (nchar(seq)-10)){
        Pep[i]<-paste(s2c(seq)[i:(i+10)],collapse = "")}
    }
  }
  data$Pep<-as.vector(Pep)
  data$H<-as.vector(sapply(Pep,function(x)hydrophobicity(x,"Eisenberg")))
  data$uH<-as.vector(sapply(Pep,function(x)hmoment(x,angle)))
  for (i in 1: length(Pep)){
    if(data$uH[i]<=((-0.421*data$H[i])+0.579) & data$H[i]>=0.5){
      data$MembPos[i]<-"Transmembrane"
    }else{
      if (data$uH[i]<=((-0.421*data$H[i])+0.579) & data$H[i]<=0.5){
        data$MembPos[i]<-"Globular"
      }
      else{
        if(data$uH[i]>=((-0.421*data$H[i])+0.579)){
          data$MembPos[i]<-"Surface"
        }
      }
    }
  }
  return(as.data.frame(data))
}