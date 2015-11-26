# lengthpep
# This function counts the amino acids of a protein sequence

lengthpep<-function(seq){
  seq<-gsub("[\r\n ]","",seq)
  # Count the amino acids
  nchar(seq)
}
