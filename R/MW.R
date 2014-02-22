MW<-function(seq){
  seq<-s2c(seq)
  W<-aaindex$FASG760101$I ; names(W)<-a(names(W)) ; W1<-table(seq)
  weight<-0 ; for (AA in 1:length(W1)){
    if(names(W1)[AA]==names(W)[which(names(W)==names(W1)[AA])]){
      weight<-weight+(W1[AA]*W[which(names(W)==names(W1)[AA])])
    }
  }
  return(as.vector(weight))
}
