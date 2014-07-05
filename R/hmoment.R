hmoment1<-function(seq,angle){
 data(H, envir = environment())
  cos<-sin<-uH<-NULL
  moment<-function(seq,angle){
    for (i in 1: nchar(seq)){
      cos[i]<-(as.array(H[[12]])[s2c(seq)[i]]*(cos((angle*(pi/180))*i)))
      sin[i]<-(as.array(H[[12]])[s2c(seq)[i]]*(sin((angle*(pi/180))*i)))}
    round(sqrt(sum(cos,na.rm=TRUE)^2+sum(sin,na.rm=TRUE)^2)/nchar(seq),2)
  }
  if (nchar(seq)<=10){
    moment(seq,angle) 
  }else{
    if (nchar(seq)>10){
      for(j in 1: (nchar(seq)-9)){
        uH[j]<-(moment(paste(s2c(seq)[j:(j+9)],collapse=""),angle))
      }
      return(max(uH))
    }
  }
}
