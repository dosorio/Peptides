charge<-function(seq,pH){
    computeCharge <- function(pH, compoAA, pK) {
    carg <- as.vector(compoAA["R"] * 10^(-pH)/(10^(-pK["R", 3]) + 10^(-pH)))
    chis <- as.vector(compoAA["H"] * 10^(-pH)/(10^(-pK["H", 3]) + 10^(-pH)))
    clys <- as.vector(compoAA["K"] * 10^(-pH)/(10^(-pK["K", 3]) + 10^(-pH)))
    casp <- as.vector(compoAA["D"] * 10^(-pK["D", 3])/(10^(-pK["D", 3]) + 10^(-pH)))
    cglu <- as.vector(compoAA["E"] * 10^(-pK["E", 3])/(10^(-pK["E", 3]) + 10^(-pH)))
    ccys <- as.vector(compoAA["C"] * 10^(-pK["C", 3])/(10^(-pK["C", 3]) + 10^(-pH)))
    ctyr <- as.vector(compoAA["Y"] * 10^(-pK["Y", 3])/(10^(-pK["Y", 3]) + 10^(-pH)))
    charge <- carg + clys + chis - (casp + cglu + ctyr + ccys)
    return(charge)
  }
  seq<-s2c(seq)
  compoAA <- table(factor(seq, levels = LETTERS))
  round(computeCharge(pH,compoAA,pK),2)
  }