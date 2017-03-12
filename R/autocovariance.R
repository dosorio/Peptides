#' @export autoCovariance
#' @title Compute the auto-covariance index of a protein sequence
#' @description This function computes the Cruciani et al (2004) auto-corvariance index. The \code{autoCovariance} index is calculated for a lag 'd' using a descriptor 'f' (centred) over a sequence of length 'L'.
#'
#' @param sequence An amino-acids sequence
#' @param lag A value for a lag, the max value is equal to the length of the shortest peptide minus one.
#' @param property A property to use as value to evaluate the covariance.
#' @param center A logical value \code{TRUE} or \code{FALSE} if the property must be centered.
#'
#' @return The computed auto-covariance index for a given amino-acids sequence
#' @references Cruciani, G., Baroni, M., Carosati, E., Clementi, M., Valigi, R., and Clementi, S. (2004) Peptide studies by means of principal properties of amino acids derived from MIF descriptors. J. Chemom. 18, 146-155.
#' @examples
#' # Loading a property to evaluate its autocorrelation
#' data(AAdata)
#'
#' # Calculate the auto-covariance index for a lag=1
#' autoCovariance(
#'   sequence = "SDKEVDEVDAALSDLEITLE",
#'   lag = 1,
#'   property = AAdata$Hydrophobicity$KyteDoolittle,
#'   center = TRUE
#' )
#' # [1] -0.4140053
#'
#' # Calculate the auto-covariance index for a lag=5
#' autoCovariance(
#'   sequence = "SDKEVDEVDAALSDLEITLE",
#'   lag = 5,
#'   property = AAdata$Hydrophobicity$KyteDoolittle,
#'   center = TRUE
#' )
#' # [1] 0.001000336
autoCovariance <- function(sequence, lag, property, center = TRUE) {
  if (center == TRUE) {
    property <- scale(property)[,]
  }
  # Split sequence by amino acids
  sequence <- aaCheck(sequence)
  if (lag < (min(lengths(sequence)) - 1)) {
    # Apply the Cruciani formula
    unlist(lapply(sequence, function(sequence) {
      sum(sapply(seq_len(length(sequence) - lag), function(position) {
        property[sequence[[position]]] * property[sequence[[position + lag]]]
      }, USE.NAMES = FALSE)) / length(sequence)
    }))
  } else {
    stop("The lag max possible value must be equal to the length of shortest peptide minus one")
  }
}