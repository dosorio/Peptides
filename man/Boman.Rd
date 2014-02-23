\name{BI}
\alias{BI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To calculate the Boman (Potential Protein Interaction) Index 
%%  ~~function to do ... ~~
}
\description{hf9wehg09wehg0eg0bg
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
BI(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case
%%     ~~Describe \code{x} here~~
}
}
\details{
Protein have high binding potential if the index value is higher than 2.48
%%  ~~ If necessary, more details than the description above ~~
}
\references{
Boman, H. G. (2003). Antibacterial peptides: basic facts and emerging concepts. Journal of internal medicine, 254(3), 197-215.

Radzicka, A., & Wolfenden, R. (1988). Comparing the polarities of the amino acids: side-chain distribution coefficients between the vapor phase, cyclohexane, 1-octanol, and neutral aqueous solution. Biochemistry, 27(5), 1664-1670.
}
\examples{
BI("GIGKFLHSAKKFGKAFVGEIMNS")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
