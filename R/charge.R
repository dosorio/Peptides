# CHARGE
# This function is the same include inside "computePI" function of "seqinr 3.0-7" package
# Charif, D. and Lobry, J.R. (2007)
# The function was modify to use diferent pKa scales and an amino acid string as input
# The algorithm is the same as the one which is implemented at the following url: 
# http://www.expasy.org/tools/pi_tool-doc.html


charge <- function(seq,pH,pKscale){
  # Divide the amino acid sequence and makes an absolute frequencies table
  compoAA <- table(factor(prot<-s2c(seq), levels = LETTERS))
  # Stablish the N-terminus and C-terminus
  nTermR <- which(LETTERS == prot[1])
  cTermR <- which(LETTERS == prot[length(seq)])
  # Stablish the pH value
  pHvalue <- pH
  # Stablish the pK scale
  M<-pmatch(pKscale,names(pK))
  pKm<-pK[,M]
  names(pKm) <- rownames(pK)
  # The charge is computed using the computeCharge function:
  # sum((10^pK)/((10^pH)+(10^pK)) for (R, H, L, nterm)) - sum ((10^pH/((10^pH)+(10^pK))) for (D, E, C, Y, cter))
  computeCharge <- function(pH, compoAA, pK, nTermResidue, cTermResidue){
    charge <-NULL
    charge$cter <- -1*(10^(-SEQINR.UTIL$pk[cTermResidue,1]) / 
                         (10^(-SEQINR.UTIL$pk[cTermResidue,1]) + 10^(-pH)))
    charge$nter <- 10^(-pH) / (10^(-SEQINR.UTIL$pk[nTermResidue,2]) + 10^(-pH))
    charge$carg <- as.vector(compoAA['R'] * 10^(-pH) / (10^(-pK['R']) + 10^(-pH)))
    charge$chis <- as.vector(compoAA['H'] * 10^(-pH) / (10^(-pK['H']) + 10^(-pH)))
    charge$clys <- as.vector(compoAA['K'] * 10^(-pH) / (10^(-pK['K']) + 10^(-pH)))
    charge$casp <- -1*as.vector(compoAA['D'] * 10^(-pK['D']) /(10^(-pK['D']) + 10^(-pH)))
    charge$cglu <- -1*as.vector(compoAA['E'] * 10^(-pK['E']) / (10^(-pK['E']) + 10^(-pH)))
    charge$ccys <- -1*as.vector(compoAA['C'] * 10^(-pK['C']) / (10^(-pK['C']) + 10^(-pH)))
    charge$ctyr <- -1*as.vector(compoAA['Y'] * 10^(-pK['Y']) / (10^(-pK['Y']) + 10^(-pH)))
    return(sum(as.numeric(charge)))
  }
  # Compute the charge and return the value rounded to 2 decimals
  round(computeCharge(pHvalue, compoAA, pKm, nTermR, cTermR),0)
}
