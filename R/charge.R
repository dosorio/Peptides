# CHARGE
# This function is the same include inside "computePI" function of "seqinr" package
# Charif, D. and Lobry, J.R. (2007)
# The function was modify to use diferent pKa scales and an amino acid string as input
# The algorithm is the same as the one which is implemented at the following url: 
# http://www.expasy.org/tools/pi_tool-doc.html

charge <- function(seq, pH, pKa){
  AA<-table(s2c(seq))
  pKa<-pmatch(pKa,names(pK))
  pKa<-as.vector(pK[,2])
  names(pKa)<-rownames(pK)
  pKa[AA]
}
