membpos<-function(seq,structure){ 
  moment<-function(seq,structure){
    S=C=0
    Eisenberg<-matrix(nrow=21,ncol=1)
    rownames(Eisenberg)<-c("I","F","V","L","W","M","A","G","C","Y","P","T","S","H","E","N","Q","D","K","R","X"); colnames(Eisenberg)<-"H"
    Eisenberg[,1]<-c(1.38,1.19,1.08,1.06,0.81,0.64,0.62,0.48,0.29,0.26,0.12,-0.05,-0.18,-0.40,-0.74,-0.78,-0.85,-0.90,-1.50,-2.53,0)
    if(structure=="a"){
      for (i in 1:length(s2c(seq))){
        for (j in 1:20){
          if (s2c(seq)[i]==(row.names(Eisenberg)[j])){
            C[i]<-(Eisenberg[j]*cos(1.745*i))
            S[i]<-(Eisenberg[j]*sin(1.745*i))
          }
        }
      }
    }else{
      if (structure=="b"){
        for (i in 1:length(s2c(seq))){
          for (j in 1:20){
            if (s2c(seq)[i]==(row.names(Eisenberg)[j])){
              C[i]<-(Eisenberg[j]*cos(2.793*i))
              S[i]<-(Eisenberg[j]*sin(2.793*i))
            }
          }
        }
      }
    }
    H<-(round(sqrt(sum(C,na.rm=TRUE)^2+sum(S,na.rm=TRUE)^2)/length(s2c(seq)),2))
    return(H)
  }
  Pep=uH=H=0
  if (length(s2c(seq))<11){
    Pep[1]<-(seq)
  } 
  else{
    for (i in 1: (length(s2c(seq))-10)){
      Pep[i]<-c2s(s2c(seq)[i:(i+10)])
    }
  }
  for (i in 1: length(Pep)){
    uH[i]<-moment(Pep[i],structure)
  }
  for (i in 1: length(Pep)){
    H[i]<-round(h(Pep[i]),2)
  }
  data<-as.data.frame(Pep)
  data$uH<-as.vector(uH)
  data$H<-as.vector(H)
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
  return(data)
}

