\name{boman}
\alias{boman}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the Boman (Potential Protein Interaction) index
%%  ~~function to do ... ~~
}
\description{This function computes the potential protein interaction index proposed by Boman (2003) based in the amino acid sequence of a protein. 
The index is equal to the sum of the solubility values for all residues in a sequence, it might give an overall estimate of the potential of a peptide to bind to membranes or other proteins as receptors, to normalize it is divided by the number of residues. 
A protein have high binding potential if the index value is higher than 2.48.
}
\usage{
boman(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{aminoacid sequence string
%%     ~~Describe \code{x} here~~
}}
\references{
Boman, H. G. (2003). Antibacterial peptides: basic facts and emerging concepts. Journal of internal medicine, 254(3), 197-215.

Radzicka, A., & Wolfenden, R. (1988). Comparing the polarities of the amino acids: side-chain distribution coefficients between the vapor phase, cyclohexane, 1-octanol, and neutral aqueous solution. Biochemistry, 27(5), 1664-1670.
}
\examples{
# COMPARED TO YADAMP DATABASE
# http://yadamp.unisa.it/showItem.aspx?yadampid=845&x=0,4373912
# SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
# BOMAN INDEX  -1.24  

boman("FLPVLAGLTPSIVPKLVCLLTKKC")
# [1] -1.235833
}
