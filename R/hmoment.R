hmoment<-function(seq){
  for (i in 1: (length(s2c(seq))-9)){
    Pep[i]<-c2s(s2c(seq)[i:(i+9)])
  }
  for (i in 1: length(Pep)){
    uH[i]<-moment(Pep[i])
  }
  return(max(uH))
}