#' @export massShift
#' @title Calculate the mass difference of modified peptides.
#' @description This function calculates the mass difference of peptides introduced by chemical modifications or heavy isotope labelling.
#' @param seq An amino-acids sequence, in one letter code.
#' @param label Set a predefined heavy isotope label. Accepts "none", "silac_13c", "silac_13c15n" and "15n". Overwrites input in \code{aa} and \code{shift}.
#' @param aa Define modified amino acids. Multiple amino acids carrying the same modification can be given as a single string. Multiple amino acids carrying different modifications can be given as a vector.
#' @param shift Define the mass difference in Dalton of the amino acid(s) given in \code{aa}. If \code{aa} is a vector, \code{shift} must also be a vector of the same length.
#' @source  For the predefined heavy isotope labels, compare:
#' \itemize{
#'  \item{silac_13c}{
#'    \href{http://www.unimod.org/modifications_view.php?editid1=188}{Unimod 188}
#'  }
#'  \item{silac_13c15n}{
#'    \href{http://www.unimod.org/modifications_view.php?editid1=259}{Unimod 259} and
#'    \href{http://www.unimod.org/modifications_view.php?editid1=267}{Unimod 267}
#'  }
#'  \item{15n}{
#'    \href{http://www.unimod.org/modifications_view.php?editid1=994}{Unimod 994}, 
#'    \href{http://www.unimod.org/modifications_view.php?editid1=995}{Unimod 995}, 
#'    \href{http://www.unimod.org/modifications_view.php?editid1=996}{Unimod 996} and 
#'    \href{http://www.unimod.org/modifications_view.php?editid1=897}{Unimod 897}
#'  }
#' @details 
#' @examples 
#' massShift("EGVNDNEEGFFSAR", label = "silac_13c")
#' massShift("EGVNDNEEGFFSAR", aa = "R", shift = 6.020129)
#'
#'# To define multiple amino acids with the same modification, set \code{aa} as a single string.
#' massShift("EGVNDNEEGFFSARK", aa = "RK", shift = 6.020129)
#'
#' # To define multiple amino acids with different modifications, set \code{aa} and \code{shift} as character vectors.
#' massShift("EGVNDNEEGFFSAR", aa = c("RK", "C"), shift = c(6.020129, 57.021464))

massShift <-
function(seq, label = "none", aa, shift){

  # Check inputs
  label <- tolower(label) # Renders case-insensitive input string.
  if(!(label %in% c("none", "silac_13c", "silac_13c15n", "15n"))){
    stop("Given label type unknown. Please use one of 'none', '15N', 'Silac_13C15N', or 'Silac_13C' (case-insensitive).")
  }
  if(label == "none" & ((!missing("aa") & missing("shift")) | (missing("aa") & !missing("shift")))){
    stop("Both 'aa' and 'shift' must be defined.")
  }
  if(!missing("aa") & !missing("shift")){
    if(length(shift) != 1 & length(shift) != length(aa)){
      stop("If 'aa' is given, 'shift' must be a vector of length 1 or of the same length as 'aa'.")
    }
  }
  
  # Predefined labels
  if (label == "silac_13c"){
    aa <- "KR"
    shift <- 6.020129
  } else if(label == "silac_13c15n"){
    aa <- c("K", "R")
    shift <- c(8.014199, 10.008269)
  }
  
  # Split sequence by amino acids
  seq <- aaCheck(seq)

  # Add mass shifts
  if(label != "15n"){
    shiftTotal <- 0
    if(!missing(aa)){
      aa <- as.list(aa)
      aa <- lapply(aa, function(x) unlist(strsplit(x, "")))
      for (i in 1:length(aa)){
        for (j in 1:length(aa[[i]])){
          n <- stri_count(seq, fixed = aa[[i]][j])
          if (length(shift) < length(aa)) {
            shiftTotal <- shiftTotal + n * shift
          } else {
            shiftTotal <- shiftTotal + n * shift[i]
          }
        }
      }
    }
  }else if(label == "15n"){
    # Add mass shifts for 15N labelling
    # Create vector with the number of nitrogen atoms per amino acid.
    countN <-
      c(
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
        V = 1,
        U = 1,
        O = 3
      )
  #   shiftTotal <- 0
  #   for (i in 1:length(countN)){
  #     nN <- sum(stri_count(unlist(seq), fixed = names(countN[i]))) * as.numeric(countN[i])
  #     shiftTotal <- shiftTotal + nN * 0.997035 # 0.997035 equals the mass shift from 14N to 15N.
  #   }
    shiftTotal <- unlist(lapply(seq, function(x){
        sum(countN[c(x)])
      })) * 0.997035 # 0.997035 equals the mass shift from 14N to 15N.
  }

  return(shiftTotal)
}
