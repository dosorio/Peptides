#' @export pI
#' @importFrom stats optimize
#' @title Compute the isoelectic point (pI) of a protein sequence
#' @description The isoelectric point (pI), is the pH at which a particular molecule or surface carries no net electrical charge. 
#' @param seq An amino-acids sequence
#' @param pKscale A character string specifying the pK scale to be used; must be one of \code{"Bjellqvist"}, \code{"EMBOSS"}, \code{"Murray"}, \code{"Sillero"}, \code{"Solomon"}, \code{"Stryer"}, \code{"Lehninger"}, \code{"Dawson"} or \code{"Rodwell"}
#' @details The isoelectric point (pI) is the pH at which the net charge of the protein is equal to 0. It is a variable that affects the solubility of the peptides under certain conditions of pH. When the pH of the solvent is equal to the pI of the protein, it tends to precipitate and loose its biological function.
#' @examples # COMPARED TO ExPASy ProtParam
#' # http://web.expasy.org/cgi-bin/protparam/protparam
#' # SEQUENCE: QWGRRCCGWGPGRRYCVRWC
#' # Theoretical pI: 9.88
#' 
#' pI(seq= "QWGRRCCGWGPGRRYCVRWC",pKscale= "Bjellqvist")
#' # [1] 9.881
#' 
#' # COMPARED TO EMBOSS PEPSTATS
#' # http://emboss.bioinformatics.nl/cgi-bin/emboss/pepstats
#' # SEQUENCE: QWGRRCCGWGPGRRYCVRWC
#' # Isoelectric Point = 9.7158
#' 
#' pI(seq= "QWGRRCCGWGPGRRYCVRWC",pKscale= "EMBOSS")
#' # [1] 9.716
#' 
#' # OTHER SCALES
#' 
#' pI(seq= "QWGRRCCGWGPGRRYCVRWC",pKscale= "Murray")
#' # [1] 9.818
#' pI(seq= "QWGRRCCGWGPGRRYCVRWC",pKscale= "Sillero")
#' # [1] 9.891
#' pI(seq= "QWGRRCCGWGPGRRYCVRWC",pKscale= "Solomon")
#' # [1] 9.582
#' pI(seq= "QWGRRCCGWGPGRRYCVRWC",pKscale= "Stryer")
#' # [1] 9.623
#' pI(seq= "QWGRRCCGWGPGRRYCVRWC",pKscale= "Lehninger")
#' # [1] 9.931
#' pI(seq= "QWGRRCCGWGPGRRYCVRWC",pKscale= "Dawson")
#' # [1] 9.568
#' pI(seq= "QWGRRCCGWGPGRRYCVRWC",pKscale= "Rodwell")
#' # [1] 9.718
pI <- function (seq, pKscale = "EMBOSS") {
  seq <- toupper(seq)
  pKscale <- names(AAdata$pK)[pmatch(pKscale,names(AAdata$pK))]
  if(is.na(pKscale)){
    stop("The selected pK scale is not available. pKscale must be one of: 'Bjellqvist','Dawson', 'EMBOSS', 'Lehninger', 'Murray', 'Rodwell', 'Sillero', 'Solomon', or 'Stryer'.")
  }
  sapply(seq,function(sequence){unlist(optimize(f = absoluteCharge,interval = c(0,14), seq = sequence, pKscale = pKscale))[[1]]},USE.NAMES = FALSE)
}

