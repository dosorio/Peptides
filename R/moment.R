moment<-function(seq,structure){
  S<-C<-Pep<-uH<-0
  Eisenberg<-matrix(nrow=21,ncol=1)
  rownames(Eisenberg)<-c("I","F","V","L","W","M","A","G","C","Y","P","T","S","H","E","N","Q","D","K","R","X"); colnames(Eisenberg)<-"H"
  Eisenberg[,1]<-c(1.38,1.19,1.08,1.06,0.81,0.64,0.62,0.48,0.29,0.26,0.12,-0.05,-0.18,-0.40,-0.74,-0.78,-0.85,-0.90,-1.50,-2.53,0)
    for (i in 1:length(s2c(seq))){
      for (j in 1:20){
        if (s2c(seq)[i]==(row.names(Eisenberg)[j])){
          C[i]<-(Eisenberg[j]*cos(1.745*i))
          S[i]<-(Eisenberg[j]*sin(1.745*i))
        }
      }
    }
  H<-(round(sqrt(sum(C,na.rm=TRUE)^2+sum(S,na.rm=TRUE)^2),2))/length(s2c(seq))
  return(H)
}



