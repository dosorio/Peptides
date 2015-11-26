# boman
# PROTEIN - PROTEIN INTERACTION INDEX
# This function compute the potential protein-protein interaction index proposed by Boman (2003)
# based in the amino acid sequence of a protein.
# Boman, H. G. (2003). Antibacterial peptides: basic facts and emerging concepts.
# Journal of Internal Medicine, 254(3), 197-215.

boman<-function(seq){
  seq<-gsub("[\r\n ]","",seq)
  # Create the Boman scale vector
  boman<-c(L=4.92, I=4.92, V=4.04, F=2.98, M=2.35, W=2.33, A=1.81, C=1.28, G=0.94, Y=-0.14, T=-2.57, S=-3.40,
           H=-4.66, Q=-5.54, K=-5.55, N=-6.64, E=-6.81, D=-8.72, R=-14.92)
  # Asign a value to each amino acids in the sequence, sum the values and divide on amino acid sequence length
  # Report the index rounded to 2 decimals
  return(-1*sum(boman[strsplit(toupper(seq),"")[[1]]],na.rm=T)/nchar(seq))
}
