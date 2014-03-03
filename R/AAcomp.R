AAcomp<-function(seq){
  A<-table(s2c(seq))
  AA<-matrix(0,ncol=length(LETTERS),nrow=1) ; colnames(AA)<-LETTERS
  CM<-matrix(0,nrow=9,ncol=2) ; rownames(CM)<-c("Tiny","Small","Aliphatic","Aromatic","Non Polar","Polar","Charged","Basic","Acid") ; colnames(CM)<-c("Number","Mole%")
  for (i in 1:length(A)){
    for (j in 1:length(AA)){
      if (names(A)[i]==colnames(AA)[j]){
        AA[j]<-A[i]
      }
    } 
  }
  CM[1,1]<-sum(AA[c(1,3,7,19,20)]) ; CM[1,2]<-round(CM[1,1]/length(s2c(seq)),4)*100
  CM[2,1]<-sum(AA[c(1,2,3,4,7,14,16,19,20,22)]); CM[2,2]<-round(CM[2,1]/length(s2c(seq)),4)*100
  CM[3,1]<-sum(AA[c(1,9,12,22)]); CM[3,2]<-round(CM[3,1]/length(s2c(seq)),4)*100
  CM[4,1]<-sum(AA[c(6,8,23,25)]); CM[4,2]<-round(CM[4,1]/length(s2c(seq)),4)*100
  CM[5,1]<-sum(AA[c(1,3,6,7,9,12,13,16,22,23,25)]); CM[5,2]<-round(CM[5,1]/length(s2c(seq)),4)*100
  CM[6,1]<-sum(AA[c(4,5,8,11,14,17,18,19,20,26)]); CM[6,2]<-round(CM[6,1]/length(s2c(seq)),4)*100
  CM[7,1]<-sum(AA[c(2,4,5,8,11,18,26)]); CM[7,2]<-round(CM[7,1]/length(s2c(seq)),4)*100
  CM[8,1]<-sum(AA[c(8,11,18)]); CM[8,2]<-round(CM[8,1]/length(s2c(seq)),4)*100
  CM[9,1]<-sum(AA[c(2,4,5,26)]); CM[9,2]<-round(CM[9,1]/length(s2c(seq)),4)*100
  return(CM)
}