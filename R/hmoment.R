hmoment<-function(seq,structure){
  S<-C<-0
  Eisenberg<-matrix(nrow=20,ncol=1)
  rownames(Eisenberg)<-c("I","F","V","L","W","M","A","G","C","Y","P","T","S","H","E","N","Q","D","K","R"); colnames(Eisenberg)<-"H"
  Eisenberg[,1]<-c(0.73,0.61,0.54,0.53,0.37,0.26,0.25,0.16,0.04,0.02,-0.07,-0.18,-0.26,-0.40,-0.62,-0.64,-0.69,-0.72,-1.1,-1.8)
  if (structure==ahelix){
      for (i in 1:length(s2c(seq))){
          for (j in 1:20){
              if (s2c(seq)[i]==(row.names(Eisenberg)[j])){
                  C[i]<-(Eisenberg[j]*cos(100))^2
                  S[i]<-(Eisenberg[j]*sin(100))^2
              }
          }
      }
  }
      else{
  for (i in 1:length(s2c(seq))){
    for (j in 1:20){
      if (s2c(seq)[i]==(row.names(Eisenberg)[j])){
        C[i]<-(Eisenberg[j]*cos(160))^2
        S[i]<-(Eisenberg[j]*sin(160))^2
      }
    }
  }
}
  H<-sqrt(sum(C)+sum(S))
  return(H)
}
