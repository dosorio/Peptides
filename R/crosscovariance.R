#' @export crossCovariance
#' @title Compute the cross-covariance index of a protein sequence
crossCovariance <-
  function(sequence,
           lag,
           property1,
           property2,
           center = TRUE) {
    sequence <- gsub("[[:space:]]+", "", sequence)
    sequence <- strsplit(sequence, "")
    unlist(lapply(sequence, function(sequence) {
      sum(sapply(seq_len(length(sequence) - lag), function(position) {
        property1[sequence[[position]]] * property2[sequence[[position + lag]]]
      }, USE.NAMES = FALSE)) / length(sequence)
    }))
  }