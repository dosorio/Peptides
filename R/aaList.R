#' @export aaList
#' @title Return a vector with the 20 standard amino acids in upper case
#' @description This function returns a vector with the 20 standard amino acids in upper case. 

#' @return A character vector with the 20 standard amino acids in upper case.
#' @references Lu, Y., & Freeland, S. (2006). On the evolution of the standard amino-acid alphabet. Genome biology, 7(1), 102.
#' @author  Richel Bilderbeek <richel@richelbilderbeek.nl>
#' 
aaList <- function() {
  c("A" ,"C" ,"D" ,"E" ,"F" ,"G" ,"H" ,"I" ,"K" ,"L" ,
    "M" ,"N" ,"P" ,"Q" ,"R" ,"S" ,"T" ,"V" ,"W" ,"Y"
  )
}
