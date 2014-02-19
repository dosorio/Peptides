pI<-function (seq){
  seq<-s2c(seq)
  if (length(which(seq == "*")) != 0) 
    seq <- seq[-which(seq == "*")]
  compoAA <- table(factor(seq, levels = LETTERS))
  nTermR <- which(LETTERS == seq[1])
  cTermR <- which(LETTERS == seq[length(seq)])
  computeCharge <- function(pH, compoAA, pK, nTermResidue, cTermResidue) {
    cter <- 10^(-pK[cTermResidue, 1])/(10^(-pK[cTermResidue,1]) + 10^(-pH))
    nter <- 10^(-pH)/(10^(-pK[nTermResidue, 2]) + 10^(-pH))
    carg <- as.vector(compoAA["R"] * 10^(-pH)/(10^(-pK["R",3]) + 10^(-pH)))
    chis <- as.vector(compoAA["H"] * 10^(-pH)/(10^(-pK["H",3]) + 10^(-pH)))
    clys <- as.vector(compoAA["K"] * 10^(-pH)/(10^(-pK["K",3]) + 10^(-pH)))
    casp <- as.vector(compoAA["D"] * 10^(-pK["D", 3])/(10^(-pK["D",3]) + 10^(-pH)))
    cglu <- as.vector(compoAA["E"] * 10^(-pK["E", 3])/(10^(-pK["E",3]) + 10^(-pH)))
    ccys <- as.vector(compoAA["C"] * 10^(-pK["C", 3])/(10^(-pK["C",3]) + 10^(-pH)))
    ctyr <- as.vector(compoAA["Y"] * 10^(-pK["Y", 3])/(10^(-pK["Y",3]) + 10^(-pH)))
    charge <- carg + clys + chis + nter - (casp + cglu + ctyr + ccys + cter)
    return(charge)
  }
  critere <- function(p1, p2, p3, p4, p5) {
    computeCharge(pH = p1, compoAA = p2, pK = p3, nTermResidue = p4, cTermResidue = p5)^2
  }
  nlmres <- nlm(critere, 7, p2 = compoAA, p3 = SEQINR.UTIL$pk, p4 = nTermR, p5 = cTermR)
  while (!identical(all.equal(nlmres$minimum, 0), TRUE)) {
    nlmres <- nlm(critere, runif(1, 0, 14), p2 = compoAA, 
                  p3 = SEQINR.UTIL$pk, p4 = nTermR, p5 = cTermR)
  }
  return(nlmres$estimate)
}