#' @export crossCovariance
#' @title Compute the cross-covariance index of a protein sequence
#' @description This function computes the Cruciani et al (2004) cross-covariance index. The lagged \code{crossCovariance} index is calculated for a lag 'd' using two descriptors 'f1' and 'f2' (centred) over a sequence of length 'L'.
#'
#' @param sequence An amino-acids sequence
#' @param lag A value for a lag, the max value is equal to the length of the shortest peptide minus one.
#' @param property1 A property to use as value to evaluate the cross-covariance.
#' @param property2 A property to use as value to evaluate the cross-covariance.
#' @param center A logical value \code{TRUE} or \code{FALSE} if the property must be centered.
#'
#' @return The computed cross-covariance index for a given amino-acids sequence
#' @references Cruciani, G., Baroni, M., Carosati, E., Clementi, M., Valigi, R., and Clementi, S. (2004) Peptide studies by means of principal properties of amino acids derived from MIF descriptors. J. Chemom. 18, 146-155.
#' @examples
#' # Loading a property to evaluate its autocorrelation
#' data(AAdata)
#'
#' # Calculate the cross-covariance index for a lag=1
#' crossCovariance(
#'   sequence = "SDKEVDEVDAALSDLEITLE",
#'   lag = 1,
#'   property1 = AAdata$Hydrophobicity$KyteDoolittle,
#'   property2 = AAdata$Hydrophobicity$Eisenberg,
#'   center = TRUE
#' )
#' # [1] -0.3026609
#'
#' # Calculate the cross-correlation index for a lag=5
#' crossCovariance(
#'   sequence = "SDKEVDEVDAALSDLEITLE",
#'   lag = 5,
#'   property1 = AAdata$Hydrophobicity$KyteDoolittle,
#'   property2 = AAdata$Hydrophobicity$Eisenberg,
#'   center = TRUE
#' )
#' # [1] 0.02598035
crossCovariance <-
  function(sequence,
           lag,
           property1,
           property2,
           center = TRUE) {
    if (center == TRUE) {
      property1 <- scale(property1)[,]
      property2 <- scale(property2)[,]
    }
    # Split sequence by amino acids
    sequence <- aaCheck(sequence)
    if (lag < (min(lengths(sequence)) - 1)) {
      # Apply Cruciani formula
      unlist(lapply(sequence, function(sequence) {
        sum(sapply(seq_len(length(sequence) - lag), function(position) {
          property1[sequence[[position]]] * property2[sequence[[position + lag]]]
        }, USE.NAMES = FALSE)) / length(sequence)
      }))
    } else {
      stop("The lag max possible value must be equal to the length of shortest peptide minus one")
    }
  }

