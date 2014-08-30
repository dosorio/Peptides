# HMOMENT
# This function compute the hmoment based on Eisenberg, D., Weiss, R. M., & Terwilliger, T. C. (1984). 
# The hydrophobic moment detects periodicity in protein hydrophobicity. 
# Proceedings of the National Academy of Sciences of the United States of America, 81(1), 140–4.

hmoment<-function(seq,angle){
  # Loading Hydrophobicity scales
  data(H, envir = environment())
  # Setting global variables
  H<-H
  AA<-s2c(toupper(seq))
  # Setting input length
  if(nchar(seq)>10){
    Pep<-NULL
    for (i in 1: (nchar(seq)-9)){
      Pep[i]<-paste(AA[i:(i+9)],collapse ="")}
  }else{
    Pep<-seq
  }
  # Defining the moment function
  moment<-function(seq,angle){
    vcos<-vsin<-uH<-NULL
    aa<-s2c(toupper(seq))
    for (i in 1: nchar(seq)){
      vcos[i]<-(as.array(H[[12]])[aa[i]]*(cos((angle*(pi/180))*i)))
      vsin[i]<-(as.array(H[[12]])[aa[i]]*(sin((angle*(pi/180))*i)))}
    round(sqrt(sum(vcos,na.rm=TRUE)^2+sum(vsin,na.rm=TRUE)^2)/nchar(seq),2)
  }
  # Applying the moment function to each 10 amino acids window
  # Return the max value rounded to 3 decimals
  max(sapply(Pep,function(x)moment(x,angle)))
}
