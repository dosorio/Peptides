\name{boman}
\alias{boman}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To calculate the Boman (Potential Protein Interaction) Index 
%%  ~~function to do ... ~~
}
\description{Calculate the protein binding potential using a published thermodynamics solubility properties for amino acid side chains. The index is equal to the sum of the solubility values for all residues in a sequence might give an overall estimate of the potential of a peptide to bind to membranes or other proteins such as different receptors, to normalize it is divided by the number of residues.
}
\usage{
boman(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case
%%     ~~Describe \code{x} here~~
}
}
\details{
Protein have high binding potential if the index value is higher than 2.48 (Boman, 2003)
%%  ~~ If necessary, more details than the description above ~~
}
\value{
The Boman index as a numerical vector of length one}
\references{
Boman, H. G. (2003). Antibacterial peptides: basic facts and emerging concepts. Journal of internal medicine, 254(3), 197-215.

Radzicka, A., & Wolfenden, R. (1988). Comparing the polarities of the amino acids: side-chain distribution coefficients between the vapor phase, cyclohexane, 1-octanol, and neutral aqueous solution. Biochemistry, 27(5), 1664-1670.
}
\examples{
boman("GIGKFLHSAKKFGKAFVGEIMNS")

##Output
# [1] 0.42
}
