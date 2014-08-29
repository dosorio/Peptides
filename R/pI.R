# PI
# This function computes the theoretical pI of a protein sequence using one of the 9 pKa scales availables
# Bjellqvist, EMBOSS, Murray, Sillero, Solomon, Stryer, Lehninger, Dawson or Rodwell
# The algorithm is the same implemented on Charif, D. and Lobry, J.R. (2007) computepI function of seqinR 3.0.7 package

pI<-function (seq,pKscale) 
{
  # Function to value minimize
  I <- function(p1, p2, p3) {
    charge(pH = p1, seq = p2, pKscale = p3)^2
  }
  # Non-Linear Minimization
  nlmres <- nlm(I, 7, p2 = seq, p3 = pKscale)$minimum
  while (!identical(all.equal(nlmres$minimum, 0), TRUE)) {
    nlmres <- nlm(I, runif(1, 0, 14), p2 = seq, p3 = pKscale)
  }
  # Return the theoretical isoelectric point rounded to 2 decimals
  return(round(nlmres$estimate,3))
}