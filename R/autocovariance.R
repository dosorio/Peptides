#' @export autoCovariance
#' @title Compute the auto-covariance index of a protein sequence
#' @description This function computes the Cruciani et al (2004) auto-corvariance index. 
autoCovariance <- function(sequence, lag, property, center = TRUE) {
  if (center == TRUE) {
    property <- scale(property)[, ]
  }
  sequence <- gsub("[[:space:]]+", "", sequence)
  sequence <- strsplit(sequence, "")
  unlist(lapply(sequence, function(sequence) {
    sum(sapply(seq_len(length(sequence) - lag), function(position) {
      property[sequence[[position]]] * property[sequence[[position + lag]]]
    }, USE.NAMES = FALSE)) / length(sequence)
  }))
}