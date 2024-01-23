#' @export massShift
#' @title Calculate the mass difference of modified peptides.
#' @description This function calculates the mass difference of peptides introduced by chemical modifications or heavy isotope labelling.
#' @param seq An amino-acids sequence, in one letter code.
#' @param monoisotopic A logical value \code{'TRUE'} or \code{'FALSE'} indicating if monoisotopic weights of amino-acids should be used
#' @param label Set a predefined heavy isotope label. Accepts "none", "silac_13c", "silac_13c15n" and "15n". Overwrites input in \code{aaShift}.
#' @param aaShift Define the mass difference in Dalton of given amino acids as a named vector. 
#' Use the amino acid one letter code as names and the mass shift in Dalton as values. 
#' N-terminal and C-terminal modifications can be defined by using "Nterm =" and "Cterm =", respectively.
#' @source  For the predefined heavy isotope labels, compare:
#' 
#' \itemize{
#'  \item silac_13c 
#'    \href{https://www.unimod.org/modifications_view.php?editid1=188}{Unimod 188}
#'  
#'  \item silac_13c15n
#'    \href{https://www.unimod.org/modifications_view.php?editid1=259}{Unimod 259} and
#'    \href{https://www.unimod.org/modifications_view.php?editid1=267}{Unimod 267}
#'  
#'  \item 15n
#'    \href{https://www.unimod.org/modifications_view.php?editid1=994}{Unimod 994}, 
#'    \href{https://www.unimod.org/modifications_view.php?editid1=995}{Unimod 995}, 
#'    \href{https://www.unimod.org/modifications_view.php?editid1=996}{Unimod 996} and 
#'    \href{https://www.unimod.org/modifications_view.php?editid1=897}{Unimod 897}
#'  
#' }
#' @examples 
#' massShift("EGVNDNECEGFFSAR", label = "silac_13c")
#' massShift("EGVNDNECEGFFSAR", aaShift = c(K = 6.020129, R = 6.020129))
#'

massShift <-
function(seq, label = "none", aaShift = NULL, monoisotopic = TRUE){

  # Check inputs
  label <- tolower(label) # Renders case-insensitive input string.
  if(!(label %in% c("none", "silac_13c", "silac_13c15n", "15n", "13c", "13c15n"))){
    stop("Given label type unknown. Please use one of 'none', '15N', '13C', '13C15N', 'Silac_13C15N', or 'Silac_13C' (case-insensitive).")
  }
  if(!is.null(aaShift) & is.null(names(aaShift))){
    stop("'aaShift' must be given as a named vector, e.g. 'aaShift = c(K = 6.020129)'.")
  }
  allowed <- c(aaList(), "Cterm", "Nterm")
  if(!is.null(aaShift) & !all(names(aaShift) %in% allowed)){
    stop(paste("Unknown amino acids defined in 'aaShift'. Only the following names are allowed:", paste(allowed, collapse = ", ")))
  }
  
  # Predefined labels
  if (label == "silac_13c"){
    aaShift <- c("K" = 6.020129 - 0.064229*!monoisotopic, "R" = 6.020129- 0.064229*!monoisotopic)
  } else if(label == "silac_13c15n"){
    aaShift <- c("K" = 8.014199 -0.071499*!monoisotopic, "R" = 10.008269-0.078669*!monoisotopic)
  } else if(label == "15n"){
    aaShift <- c(
#      U = 1,
#      O = 3,
      A = 1,
      R = 4,
      N = 2,
      D = 1,
      C = 1,
      E = 1,
      Q = 2,
      G = 1,
      H = 3,
      I = 1,
      L = 1,
      K = 2,
      M = 1,
      F = 1,
      P = 1,
      S = 1,
      T = 1,
      W = 2,
      Y = 1,
      V = 1
    ) * (0.997035 -0.003635*!monoisotopic) # 0.997035 equals the mass shift from 14N to 15N. 0.9934 equals the mass shift from average N to 15N.
  } else if(label == "13c"){
    aaShift <- c(
      #      U = ,
      #      O = ,
      A = 3,
      R = 6,
      N = 4,
      D = 4,
      C = 3,
      E = 5,
      Q = 5,
      G = 2,
      H = 6,
      I = 6,
      L = 6,
      K = 6,
      M = 5,
      F = 9,
      P = 5,
      S = 3,
      T = 4,
      W = 11,
      Y = 9,
      V = 5
    ) * (1.003355 -0.010705*!monoisotopic) # 1.003355 equals the mass shift from 12C to 13C. 0.99265 equals the mass shift from average C to 13C.
  } else if(label == "13c15n"){
    n <- 0.997035 -0.003635*!monoisotopic
    c <- 1.003355 -0.010705*!monoisotopic
    aaShift <- c(
      A = 1*n + 3*c,
      R = 4*n + 6*c,
      N = 2*n + 4*c,
      D = 1*n + 4*c,
      C = 1*n + 3*c,
      E = 1*n + 5*c,
      Q = 2*n + 5*c,
      G = 1*n + 2*c,
      H = 3*n + 6*c,
      I = 1*n + 6*c,
      L = 1*n + 6*c,
      K = 2*n + 6*c,
      M = 1*n + 5*c,
      F = 1*n + 9*c,
      P = 1*n + 5*c,
      S = 1*n + 3*c,
      T = 1*n + 4*c,
      W = 2*n + 11*c,
      Y = 1*n + 9*c,
      V = 1*n + 5*c
    )   
  }
  
  # Split sequence by amino acids
  seq <- aaCheck(seq)

  # Calculate mass shifts
  unlist(
    lapply(seq, function(x){
      sum(aaShift[c(x)], aaShift["Nterm"], aaShift["Cterm"], na.rm = TRUE)
      }))
}
