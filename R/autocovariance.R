#' @export autoCovariance
#'
autoCovariance <- function(sequence, lag, property, center = TRUE) {
  sequence <- gsub("[[:space:]]+", "", sequence)
  sequence <- strsplit(sequence, "")
  unlist(lapply(sequence, function(sequence) {
    sum(sapply(seq_len(length(sequence) - lag), function(position) {
      property[sequence[[position]]] * property[sequence[[position + lag]]]
    }, USE.NAMES = FALSE)) / length(sequence)
  }))
}