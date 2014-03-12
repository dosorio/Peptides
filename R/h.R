h<-function(seq){
  Eisenberg<-matrix(nrow=20,ncol=1); H=0
  rownames(Eisenberg)<-c("I","F","V","L","W","M","A","G","C","Y","P","T","S","H","E","N","Q","D","K","R"); colnames(Eisenberg)<-"H"
  Eisenberg[,1]<-c(1.38,1.19,1.08,1.06,0.81,0.64,0.62,0.48,0.29,0.26,0.12,-0.05,-0.18,-0.40,-0.74,-0.78,-0.85,-0.90,-1.50,-2.53)
  for (i in 1:length(s2c(seq))){
    for (j in 1:20){
      if (s2c(seq)[i]==(row.names(Eisenberg)[j])){
        H[i]<-Eisenberg[j]
      }
    }
  }
  h<-(round(sum(H,na.rm=TRUE)/length(H),2))
  return(h)
}