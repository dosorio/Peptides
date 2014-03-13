KD<-function(seq){
  pep<-s2c(seq)
  AA<-matrix(nrow=1,ncol=20)
  colnames(AA)<-c("I","L","W","F","V","M","Y","A","P","T","S","C","G","N","D","Q","E","H","K","R");rownames(AA)<-"KD"
  AA[1,]<-c(4.5,3.8,-0.9,2.8,4.2,1.9,-1.3,1.8,-1.6,-0.7,-0.8,2.5,-0.4,-3.5,-3.5,-3.5,-3.5,-3.2,-3.9,-4.5)
  KDi<-matrix(nrow=20,ncol=3)
  rownames(KDi)<-colnames(AA)
  colnames(KDi)<-c("Freq","KDI","H")
  KDi[,2]<-AA[1,]
  for(i in 1:length(AA)){
    KDi[i,1]<-length(which(pep==colnames(AA)[i])==TRUE)
  }
  KDi[,3]<-KDi[,1]*KDi[,2]
  round(sum(KDi[,3],na.rm=TRUE)/length(pep),2)
}