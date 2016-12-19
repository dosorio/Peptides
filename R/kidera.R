# kidera
# Compute the Kidera factors for an amino acid sequence.
# Kidera, A., Konishi, Y., Oka, M., Ooi, T., & Scheraga, H. A. (1985).
# Statistical analysis of the physical properties of the 20 naturally occurring amino acids.
# Journal of Protein Chemistry, 4(1), 23-55.

kidera <- function (seq) {
  # Remove the break lines from the sequence
  seq <- gsub("[[:space:]]", "", seq)
  # Load the KFactors data
  data(Kfactors, envir = environment())
  Kfactors <- Kfactors
  # Compute the selected Kidera factor.
  seq <- lapply(seq, function(seq) {
    unlist(strsplit(seq, ""))
  })
  kf <- lapply(seq, function(seq) {
    sapply(names(Kfactors), function(factor) {
      sum(Kfactors[[factor]][seq], na.rm = TRUE) / length(seq)
    })
  })
  return(kf)
}
