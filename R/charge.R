# CHARGE
# This function is the same include inside "computePI" function of "seqinr 3.0-7" package
# Charif, D. and Lobry, J.R. (2007)
# The function was modify to use diferent pKa scales and an amino acid string as input
# The algorithm is the same as the one which is implemented at the following url: 
# http://www.expasy.org/tools/pi_tool-doc.html


charge <- function(seq,pH,pKscale){
  computeCharge <- function(pH, compoAA, pK, nTermResidue, cTermResidue){
    cter <- 10^(-SEQINR.UTIL$pk[cTermResidue,1]) / 
      (10^(-SEQINR.UTIL$pk[cTermResidue,1]) + 10^(-pH))
    nter <- 10^(-pH) / (10^(-SEQINR.UTIL$pk[nTermResidue,2]) + 10^(-pH))
    carg <- as.vector(compoAA['R'] * 10^(-pH) / (10^(-pK['R']) + 10^(-pH)))
    chis <- as.vector(compoAA['H'] * 10^(-pH) / (10^(-pK['H']) + 10^(-pH)))
    clys <- as.vector(compoAA['K'] * 10^(-pH) / (10^(-pK['K']) + 10^(-pH)))
    casp <- as.vector(compoAA['D'] * 10^(-pK['D']) /(10^(-pK['D']) + 10^(-pH)))
    cglu <- as.vector(compoAA['E'] * 10^(-pK['E']) / (10^(-pK['E']) + 10^(-pH)))
    ccys <- as.vector(compoAA['C'] * 10^(-pK['C']) / (10^(-pK['C']) + 10^(-pH)))
    ctyr <- as.vector(compoAA['Y'] * 10^(-pK['Y']) / (10^(-pK['Y']) + 10^(-pH)))
    charge <- carg + clys + chis + nter - (casp + cglu + ctyr + ccys + cter)
    return(charge)
  }
  prot <- s2c(seq)
  compoAA <- table(factor(prot, levels = LETTERS))
  nTermR <- which(LETTERS == prot[1])
  cTermR <- which(LETTERS == prot[length(seq)])
  pHseq <- pH
  M<-pmatch(pKscale,names(pK))
  pKm<-pK[,M]
  names(pKm) <- rownames(pK)
  round(computeCharge(pHseq, compoAA, pKm, nTermR, cTermR),1)
}