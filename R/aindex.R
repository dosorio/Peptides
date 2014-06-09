aindex1<-function(seq){
  p<-100*(table(s2c(seq))/sum(table(s2c(seq))))
  round(sum(c(p["A"],(2.9*p["V"]),3.9*p[c("L","I")]),na.rm=T),2)
}