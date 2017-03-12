#' @export membpos
#' @title Compute theoretically the class of a protein sequence
#' @description This function calculates the theoretical class of a protein sequence based on the relationship between the hydrophobic moment and hydrophobicity scale proposed by Eisenberg (1984).
#' @param seq An amino-acids sequence
#' @param angle A protein rotational angle
#' @return A data frame for each sequence given with the calculated class for each window of eleven amino-acids
#' @references Eisenberg, David. "Three-dimensional structure of membrane and surface proteins." Annual review of biochemistry 53.1 (1984): 595-623.
#'
#' D. Eisenberg, R. M. Weiss, and T. C. Terwilliger. The helical hydrophobic moment: A measure of the amphiphilicity of a helix. Nature, 299(5881):371-374, 1982. [p7, 8]
#' @details Eisenberg et al. (1982) found a correlation between hydrophobicity and hydrophobic moment that defines the protein section as globular, transmembrane or superficial. The function calculates the hydrophobicity (H) and hydrophobic moment (uH) based on the standardized scale of Eisenberg (1984) using windows of 11 amino acids for calculate the theoretical fragment type.
#' @examples membpos(seq = "ARQQNLFINFCLILIFLLLI",angle = 100)
#' #       Pep        H     uH       MembPos
#' # 1 ARQQNLFINFCL 0.083 0.353      Globular
#' # 2 RQQNLFINFCLI 0.147 0.317      Globular
#' # 3 QQNLFINFCLIL 0.446 0.274      Globular
#' # 4 QNLFINFCLILI 0.632 0.274 Transmembrane
#' # 5 NLFINFCLILIF 0.802 0.253       Surface
#' # 6 LFINFCLILIFL 0.955 0.113 Transmembrane
#' # 7 FINFCLILIFLL 0.955 0.113 Transmembrane
#' # 8 INFCLILIFLLL 0.944 0.108 Transmembrane
#' # 9 NFCLILIFLLLI 0.944 0.132 Transmembrane
#' 
#' membpos(seq = "ARQQNLFINFCLILIFLLLI",angle = 160)
#' #       Pep        H     uH    MembPos
#' # 1 ARQQNLFINFCL 0.083 0.467  Globular
#' # 2 RQQNLFINFCLI 0.147 0.467  Globular
#' # 3 QQNLFINFCLIL 0.446 0.285  Globular
#' # 4 QNLFINFCLILI 0.632 0.358  Surface
#' # 5 NLFINFCLILIF 0.802 0.358  Surface
#' # 6 LFINFCLILIFL 0.955 0.269  Surface
#' # 7 FINFCLILIFLL 0.955 0.269  Surface
#' # 8 INFCLILIFLLL 0.944 0.257  Surface
#' # 9 NFCLILIFLLLI 0.944 0.229  Surface
membpos <- function(seq, angle = 100) {
  # Check amino acids
  seq <- aaCheck(seq)
  
  # Set window length
  window <- min(nchar(seq), 11)
  
  # Paste sequences
  seq <- unlist(lapply(seq,function(seq){paste0(seq,collapse = "")}))
  
  # K-mers
  lapply(seq, function(seq){
  pep <-
    substring(toupper(seq), (window):nchar(seq), first = 1:((nchar(seq) - window) +1))
  
  # Compute the hmoment and hydrophobicity for each amino acid window
  data <- as.data.frame(matrix(nrow = length(pep), ncol = 5))
  data[, 1] <- pep
  data[, 2] <-
    round(as.vector(sapply(pep, function(x)
      hydrophobicity(x, "Eisenberg"))), 3)
  data[, 3] <-
    round(as.vector(sapply(pep, function(x)
      hmoment(x, angle, window))), 3)
  data[, 4] <- (data[, 2] * -0.421) + 0.579
  colnames(data) <- c("Pep", "H", "uH", "m", "MembPos")
  
  # Assigns a class depending on the hydrophobicity and hmoment
  data[which(data$uH <= data$m & data$H >= 0.5), 5] <- "Transmembrane"
  data[which(data$uH <= data$m & data$H <= 0.5), 5] <- "Globular"
  data[which(data$uH >= data$m), 5] <- "Surface"
  return(data[-4])
  })
}
