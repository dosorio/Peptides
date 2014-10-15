# HYDROPHOBICITY
# This function compute the GRAVY hydrophobicity index using 22 different hydrophobicity scales.
# The hydrophobicity scales are the same implemented in ExPASy "ProtScale"
# The function is the reported in Kyte, J., & Doolittle, R. F. (1982). 
# A simple method for displaying the hydropathic character of a protein. 
# Journal of Molecular Biology, 157(1), 105–32.

hydrophobicity<-function(seq,scale){
  # Setting the hydrophobicity scale
  M<-c("KyteDoolittle","AbrahamLeo",   "BullBreese",   "Guy",          "Miyazawa",     "Roseman",      "Wolfenden",   
       "Wilson",       "Cowan3.4",     "Aboderin",     "Sweet",        "Eisenberg",    "HoppWoods",    "Manavalan",   
       "BlackMould",   "Fauchere",     "Janin",        "Rao",          "Tanford",      "Cowan7.5",     "Chothia",
       "Rose")
  scale<-pmatch(scale,M)
  # Loading hydrophobicity scales
  data(H, envir = environment())
  H<-H
  # Sum the hydrophobicity of each amino acid and divide them between the sequence length
  # Return the GRAVY value rounded to 2 decimals
  round(sum(H[[scale]][s2c(toupper(seq))],na.rm = TRUE)/nchar(seq),2)
}
