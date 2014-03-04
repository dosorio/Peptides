boman<-function(seq){
  Boman<-matrix(nrow=19,ncol=1)
  rownames(Boman)<-c("L","I","V","F","M","W","A","C","G","Y","T","S","H","Q","K","N","E","D","R")
  Boman[,1]<-c(4.92,4.92,4.04,2.98,2.35,2.33,1.81,1.28,0.94,-0.14,-2.57,-3.40,-4.66,-5.54,-5.55,-6.64,-6.81,-8.72,-14.92)
  BI<-0
  for (i in 1:length(table(s2c(seq)))){
    for (j in 1:19){
      if (names(table(s2c(seq))[i])==(row.names(Boman)[j])){
        BI[i]<-(as.vector(table(s2c(seq))[i])*Boman[j])
      }
    }
  }
  BI<-(-1*(sum(BI,na.rm=TRUE)/length(s2c(seq))))
  return(round(BI,2))
}