# lengthpep
# This function counts the amino acids of a protein sequence

lengthpep <- function(seq) {
  seq <- gsub("[[:space:]]", "", seq)
  # Count the amino acids
  nchar(seq)
}
