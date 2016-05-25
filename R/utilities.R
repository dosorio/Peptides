#' Remove spaces from strings
#' 
#' A utility function to remove spaces from strings.
#' @param x A character vector.
#' @return A character vector without spaces.
#' @noRd
.remove_spaces <- function(x)
{
  gsub("[\r\n ]", "", x)
}

#' Convert a string to upper case chars
#' 
#' A utility to convert a character vector to a list of character vectors of
#' upper case strings.
#' @param x A character vector.
#' @return A list of character vectors. 
#' @noRd
.to_upper_chars <- function(x)
{
  strsplit(toupper(x), "")
}
