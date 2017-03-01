#' @export hmoment
#' @importFrom stats embed
#' @importFrom utils data
#' @title Compute the hydrophobic moment of a protein sequence
#' @description This function compute the hmoment based on Eisenberg, D., Weiss, R. M., & Terwilliger, T. C. (1984). Hydriphobic moment is a quantitative measure of the amphiphilicity perpendicular to the axis of any periodic peptide structure, such as the a-helix or b-sheet. It can be calculated for an amino acid sequence of N residues and their associated hydrophobicities Hn.
#' @param seq An amino-acids sequence
#' @param angle A protein rotational angle (Suggested: a-helix = 100, b-sheet=160)
#' @param window A sequence fraction length
#' @return The computed maximal hydrophobic moment (uH) for a given amino-acids sequence
#' @references Eisenberg, D., Weiss, R. M., & Terwilliger, T. C. (1984). The hydrophobic moment detects periodicity in protein hydrophobicity. Proceedings of the National Academy of Sciences, 81(1), 140-144.
#' @details The hydrophobic moment was proposed by Eisenberg et al. (1982), as a quantitative measure of the amphiphilicity perpendicular to the axis of any periodic peptide structure. It is computed using the standardized Eisenberg (1984) scale, windows (fragment of sequence) of eleven amino acids (by default) and specifying the rotational angle at which it should be calculated.
#' @examples # COMPARED TO EMBOSS:HMOMENT
#' # http://emboss.bioinformatics.nl/cgi-bin/emboss/hmoment
#' # SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
#' # ALPHA-HELIX ANGLE=100 : 0.52
#' # BETA-SHEET  ANGLE=160 : 0.271
#' 
#' # ALPHA HELIX VALUE
#' hmoment(seq = "FLPVLAGLTPSIVPKLVCLLTKKC", angle = 100, window = 11)
#' # [1] 0.5199226
#' 
#' # BETA SHEET VALUE
#' hmoment(seq = "FLPVLAGLTPSIVPKLVCLLTKKC", angle = 160, window = 11)
#' # [1] 0.2705906
#' @note This function was written by an anonymous reviewer of the RJournal

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
      stats::embed(aa, min(c(length(aa), window)))
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
