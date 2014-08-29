# PI
# This function computes the theoretical pI of a protein sequence using one of the 9 pKa scales availables
# Bjellqvist, EMBOSS, Murray, Sillero, Solomon, Stryer, Lehninger, Dawson or Rodwell

pI<-function (seq,pKscale) 
{
  # Define pH values
  pHs <- seq(0 , 14 , 0.001)
  # Evaluate the net charge for defined pHs
  charges <- charge(seq,pHs,pKscale)
  # Computes the pI and returns the value rounded to 3 decimals
  I <- round(mean(pHs[which(abs(charges)==min(abs(charges)))]),3)
  return(I)
}

