hydrophobicity<-function(seq,method){
  M<-c("KyteDoolittle","AbrahamLeo",   "BullBreese",   "Guy",          "Miyazawa",     "Roseman",      "Wolfenden",   
       "Wilson",       "Cowan3.4",     "Aboderin",     "Sweet",        "Eisenberg",    "HoppWoods",    "Manavalan",   
       "BlackMould",   "Fauchere",     "Janin",        "Rao",          "Tanford",      "Welling",      "Parker",      
       "Cowan7.5",     "Chothia",      "Rose")
  method<-pmatch(method,M)
  data(H, envir = environment())
  round(sum(as.array(H[[method]])[s2c(seq)])/nchar(seq),2)
}
