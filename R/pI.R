# pI
# This function compute the pI of a aminoacid sequence
# This function is the same writen by Charif, D. and Lobry, J.R. (2007) on "seqinr 3.0-7" R package
# Charif, D., & Lobry, J. R. (2007). SeqinR 1.0-2: a contributed package to the R project for 
# statistical computing devoted to biological sequences retrieval and analysis.
# In Structural approaches to sequence evolution (pp. 207-232). Springer Berlin Heidelberg.

pI<-function(seq)round(computePI(s2c(seq)),2)