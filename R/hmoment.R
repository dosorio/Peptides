# hmoment
# This function compute the hmoment based on Eisenberg, D., Weiss, R. M., & Terwilliger, T. C. (1984).
# The hydrophobic moment detects periodicity in protein hydrophobicity.
# Proceedings of the National Academy of Sciences of the United States of America, 81(1), 140-4.
# This function was written by an anonymous reviewer of the RJournal

hmoment <- function(seq, angle = 100, window = 11) {
  # Loading hydrophobicity scale
  seq <- gsub("[[:space:]]", "", seq)
  data(H, envir = environment())
  H <- H
  h <- H[["Eisenberg"]]
  # Splitting the sequence in amino acids
  aa <- lapply(seq, function(seq) {
    unlist(strsplit(seq, ""))
  })
  # Setting the sequence length
  pep <-
    lapply(aa, function(aa) {
      embed(aa, min(c(length(aa), window)))
    })
  # Applying the hmoment function to each amino acids window
  hmoment <- lapply(pep, function(pep) {
    angle <- angle * (pi / 180) * 1:min(c(length(pep), window))
    vcos <- h[t(pep)] * cos(angle)
    vsin <- h[t(pep)] * sin(angle)
    dim(vcos) <- dim(vsin) <- dim(t(pep))
    vcos <- colSums(vcos, na.rm = TRUE)
    vsin <- colSums(vsin, na.rm = TRUE)
    # Return the max value
    max(sqrt(vsin * vsin + vcos * vcos) / min(c(length(pep), window)))
  })
  return(unlist(hmoment))
}
