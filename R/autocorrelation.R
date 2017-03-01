#' @export autoCorrelation
#' @title Compute the auto-correlation index of a protein sequence
#' @description This function computes the Cruciani et al (2004) auto-correlation index. The \code{autoCorrelation} index is calculated for a lag 'd' using a descriptor 'f' (centred) over a sequence of length 'L'.
#'
#' @param sequence An amino-acids sequence
#' @param lag A value for a lag, the max value is equal to the length of shortest peptide minus one.
#' @param property A property to use as value to be correlated.
#' @param center A logical value \code{TRUE} or \code{FALSE} if the property must be centered.
#'
#' @return The computed auto-correlation index for a given amino-acids sequence
#' @references Cruciani, G., Baroni, M., Carosati, E., Clementi, M., Valigi, R., and Clementi, S. (2004) Peptide studies by means of principal properties of amino acids derived from MIF descriptors. J. Chemom. 18, 146-155.
#' @examples
#' # Loading a property to evaluate its autocorrelation
#' data(H)
#'
#' # Calculate the auto-correlation index for a lag=1
#' autoCorrelation(
#'   sequence = "SDKEVDEVDAALSDLEITLE",
#'   lag = 1,
#'   property = H$KyteDoolittle,
#'   center = TRUE
#' )
#' # [1] -0.3519908
#'
#' # Calculate the auto-correlation index for a lag=5
#' autoCorrelation(
#'   sequence = "SDKEVDEVDAALSDLEITLE",
#'   lag = 5,
#'   property = H$KyteDoolittle,
#'   center = TRUE
#' )
#' # [1] 0.001133553
autoCorrelation <-
  function(sequence, lag, property, center = TRUE) {
    if (center == TRUE) {
      property <- scale(property)[, ]
    }
    sequence <- gsub("[[:space:]]+", "", sequence)
    if (lag < (min(nchar(sequence)) - 1)) {
      sequence <- strsplit(sequence, "")
      unlist(lapply(sequence, function(sequence) {
        sum(sapply(seq_len(length(sequence) - lag), function(position) {
          property[sequence[[position]]] * property[sequence[[position + lag]]]
        }, USE.NAMES = FALSE)) / sum(sapply(seq_len(length(sequence) - lag), function(position) {
          property[sequence[[position]]] ^ 2
        }, USE.NAMES = FALSE))
      }))
    } else {
      stop("The lag max possible value must be equal to the length of shortest peptide minus one")
    }
  }