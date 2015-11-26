# kidera
# Compute the Kidera factors for an amino acid sequence.
# Kidera, A., Konishi, Y., Oka, M., Ooi, T., & Scheraga, H. A. (1985).
# Statistical analysis of the physical properties of the 20 naturally occurring amino acids.
# Journal of Protein Chemistry, 4(1), 23-55.

kidera <- function (seq, factor=""){
  # Remove the break lines from the sequence
  seq <- gsub("[\r\n ]", "", seq)
  # Load the KFactors data
  data(Kfactors, envir = environment())
  Kfactors <- Kfactors
  # Stablish the factor to use.
  factor<-match.arg(factor,names(Kfactors))
  # Compute the selected Kidera factor.
  sum(Kfactors[[factor]][strsplit(seq, "")[[1]]], na.rm = TRUE)/nchar(seq)
}
