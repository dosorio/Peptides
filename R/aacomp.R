#' @export aacomp
#' @title Compute the amino acid composition of a protein sequence
#' @description This function calculates the amount of amino acids of a particular class and classified as: Tiny, Small, Aliphatic, Aromatic, Non-polar, Polar, Charged, Basic and Acidic based on their size and R-groups using same function implemented in EMBOSS 'pepstat'. 
#' The output is a matrix with the number and percentage of amino acids of a particular class 
#' @details Amino acids are zwitterionic molecules with an amine and a carboxyl group present in their structure. 
#' Some amino acids possess side chains with specific properties that allow grouping them in different ways. 
#' The \code{aacomp} function classifies amino acids based on their size, side chains, hydrophobicity, charge and their response to pH 7.
#' @param seq An amino-acid sequence
#' @return  The output is a matrix with the number and percentage of amino acids of a particular class
#' \itemize{
#' \item{Tiny }{(A + C + G + S + T)}
#' \item{Small }{(A + B + C + D + G + N + P + S + T + V)}
#' \item{Aliphatic }{(A + I + L + V)}
#' \item{Aromatic }{(F + H + W + Y)}
#' \item{Non-polar }{(A + C + F + G + I + L + M + P + V + W + Y)}
#' \item{Polar }{(D + E + H + K + N + Q + R + S + T + Z)}
#' \item{Charged }{(B + D + E + H + K + R + Z)}
#' \item{Basic }{(H + K + R)}
#' \item{Acidic }{(B + D + E + Z)}
#' }
#' @note This function was originally written by Alan Bleasby (ajb@ebi.ac.uk) for the EMBOSS package. 
#' Further information: http://emboss.sourceforge.net/apps/cvs/emboss/apps/pepstats.html
#' @references Rice, Peter, Ian Longden, and Alan Bleasby. "EMBOSS: the European molecular biology open software suite." Trends in genetics 16.6 (2000): 276-277.
#' @examples # COMPARED TO PEPSTATS
#' # http://emboss.bioinformatics.nl/cgi-bin/emboss/pepstats
#' # Property      Residues              Number  Mole%
#' # Tiny          (A+C+G+S+T)             4   19.048
#' # Small         (A+B+C+D+G+N+P+S+T+V)   4   19.048
#' # Aliphatic     (A+I+L+V)               5   23.810
#' # Aromatic      (F+H+W+Y)               5   23.810
#' # Non-polar     (A+C+F+G+I+L+M+P+V+W+Y) 11  52.381
#' # Polar         (D+E+H+K+N+Q+R+S+T+Z)   9   42.857
#' # Charged       (B+D+E+H+K+R+Z)         8   38.095
#' # Basic         (H+K+R)                 8   38.095
#' # Acidic        (B+D+E+Z)               0   00.000
#' 
#' ## AA composition of PDB: 1D9J Cecropin Peptide
#' aacomp("KWKLFKKIGIGKFLHSAKKFX")
#' 
#' ## Output
#' #           Number  Mole %
#' # Tiny           4 19.048
#' # Small          4 19.048
#' # Aliphatic      5 23.810
#' # Aromatic       5 23.810
#' # NonPolar      11 52.381
#' # Polar          9 42.857
#' # Charged        8 38.095
#' # Basic          8 38.095
#' # Acidic         0  0.000

aacomp<-function(seq){
  # Remove space characters: tab, newline, vertical tab, form feed, carriage return, space and possibly other locale-dependent characters.
  seq <- gsub("[[:space:]]+","",as.vector(seq))
  # Divide the amino acid sequence and makes a frequencies table
  seq <- lapply(seq, function(seq){table(unlist(strsplit(seq,"")))})
  # Applying composition function
  aacomp <- lapply(seq, function(seq){
    # Create data matrix output
    AA<-matrix(ncol = 2,nrow = 9)
    rownames(AA)<-c("Tiny","Small","Aliphatic","Aromatic","NonPolar","Polar","Charged","Basic","Acidic")
    colnames(AA)<-c("Number","Mole%")
    # Classify amino acids in a particular class and sum the absolute frequencies
    AA[1,1]<-sum(seq[c("A","C","G","S","T")],na.rm = TRUE)
    AA[2,1]<-sum(seq[c("A","B","C","D","G","N","P","S","T","V")],na.rm = TRUE)
    AA[3,1]<-sum(seq[c("A","I","L","V")],na.rm = TRUE)
    AA[4,1]<-sum(seq[c("F","H","W","Y")],na.rm = TRUE)
    AA[5,1]<-sum(seq[c("A","C","F","G","I","L","M","P","V","W","Y")],na.rm = TRUE)
    AA[6,1]<-sum(seq[c("D","E","H","K","N","Q","R","S","T","Z")],na.rm = TRUE)
    AA[7,1]<-sum(seq[c("B","D","E","H","K","R","Z")],na.rm = TRUE)
    AA[8,1]<-sum(seq[c("H","K","R")],na.rm = TRUE)
    AA[9,1]<-sum(seq[c("B","D","E","Z")],na.rm = TRUE)
    # Compute the relative frequencies for each class in percentage
    AA[,2]<-(AA[,1]/sum(seq)*100)
    return(round(AA,3))
  })
  # Return output matrix rounded to 3 decimals
  return(aacomp)
}
