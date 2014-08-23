# LENGTHPEP
# This function counts the amino acids of a protein sequence

lengthpep<-function(seq){
  # Check for not amino acid letters
  if (grepl("J",seq,ignore.case = TRUE)){
    return("The sequence you entered contains illegal characters: The letter J does not code for an amino acid. Please go back and verify your sequence.")
  }
  # Count the amino acids
  nchar(seq)
}
