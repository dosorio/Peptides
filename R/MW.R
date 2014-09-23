# MW
# This function calculates the molecular weight of a protein sequence using the formula and scale available on ExPASy MWtool
# Gasteiger, E., Hoogland, C., Gattiker, A., Wilkins, M. R., Appel, R. D., & Bairoch, A. (2005). 
# Protein identification and analysis tools on the ExPASy server. 
# In The proteomics protocols handbook (pp. 571-607). Humana Press.

mw<-function(seq){
  # Create the weight scale
  weight<-c(A=71.0788, R=156.1875, N=114.1038, D=115.0886, C=103.1388, E=129.1155, Q=128.1307, 
            G=57.0519, H=137.1411, I=113.1594, L=113.1594, K=128.1741, M=131.1926, F=147.1766, 
            P=97.1167, S=87.0782,  T=101.1051, W=186.2132, Y=163.1760, V=99.1326,  U=150.0388, 
            O=237.3018)
  # Sum the weight of each amino acid and add 18,2
  # Return the MW rounded to 2 decimals
  round(sum(weight[s2c(toupper(seq))],na.rm=TRUE)+18.0153,2)
}