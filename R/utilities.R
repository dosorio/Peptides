#' Remove spaces from strings
#' 
#' A utility function to remove spaces from strings.
#' @param x A character vector.
#' @return A character vector without spaces.
#' @noRd
remove_spaces <- function(x)
{
  gsub("[\r\n ]", "", x)
}
