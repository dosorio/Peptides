# CHARGE
# This function computes the net charge of a protein sequence based on the Henderson-Hasselbalch equation described in
# Moore, D. S. (1985). Amino acid and peptide net charges: A simple calculational procedure. Biochemical Education, 13(1), 10–11.
# The net charge can be calculated using one of the 9 pKa scales availables Bjellqvist, EMBOSS, Murray, Sillero, Solomon, 
# Stryer, Lehninger, Dawson or Rodwell

charge <- function(seq,pH,pKscale){
  # # Divide the amino acid sequence and makes an absolute frequencies table
  aa<-table(factor(prot<-s2c(toupper(seq)),levels = LETTERS))
  # Set pKscale
  data(pKscales, envir = environment())
  pKscales<-pKscales
  pKs<-pKscales[,pmatch(pKscale,names(pKscales))]
  names(pKs) <- rownames(pKscales)
  # Charge
  cterm <- (-1 /(1+10^(-1*(pH-pKs["cTer"]))))
  nterm <- ( 1 /(1+10^(1*(pH-pKs["nTer"]))))
  carg  <- aa["R"]* ( 1 /(1+10^(1*(pH-pKs["R"]))))
  chis  <- aa["H"]* ( 1 /(1+10^(1*(pH-pKs["H"]))))
  clys  <- aa["K"]* ( 1 /(1+10^(1*(pH-pKs["K"]))))
  casp  <- aa["D"]* (-1 /(1+10^(-1*(pH-pKs["D"]))))
  cglu  <- aa["E"]* (-1 /(1+10^(-1*(pH-pKs["E"]))))
  ccys  <- aa["C"]* (-1 /(1+10^(-1*(pH-pKs["C"]))))
  ctyr  <- aa["Y"]* (-1 /(1+10^(-1*(pH-pKs["Y"]))))
  # Compute the charge and return the value rounded to 3 decimals
  charge <- round(as.numeric(carg + clys + chis + nterm + casp + cglu + ctyr + ccys + cterm),3)
  return(charge)
}