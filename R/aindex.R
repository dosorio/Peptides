aindex<-function(seq){
  Val<-Ala<-Leu<-Ile<-0
  AA<-table(s2c(seq))
  for(i in 1:length(AA)){
    if(names(AA)[i]=="V"){
      Val<-100*(as.numeric(AA)[i]/length(s2c(seq)))
    } 
    else if(names(AA)[i]=="A"){
      Ala<-100*(as.numeric(AA)[i]/length(s2c(seq)))
    }
    else if(names(AA)[i]=="L"){
      Leu<-100*(as.numeric(AA)[i]/length(s2c(seq)))
    }
    else if(names(AA)[i]=="I"){
      Ile<-100*(as.numeric(AA)[i]/length(s2c(seq)))
    }
  }
  ai<-round((Ala+(2.9*Val)+(3.9*(Leu+Ile))),2)
  return(ai)
}
