\name{mw}
\alias{mw}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the molecular weight of a protein sequence
%%  ~~function to do ... ~~
}
\description{
This function calculates the molecular weight of a protein sequence. It is calculated as the sum of the mass of each amino acid using the scale available on Compute pI/Mw tool.
}
\usage{
mw(seq,monoisotopic)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino acid sequence string}
  \item{monoisotopic}{logical value indicating if monoisotopic weights should be used}
%%     ~~Describe \code{x} here~~
}
\source{
The formula and amino acid scale are the same available on ExPASy Compute pI/Mw tool 
http://web.expasy.org/
}
\references{
Gasteiger, E., Hoogland, C., Gattiker, A., Wilkins, M. R., Appel, R. D., & Bairoch, A. (2005). Protein identification and analysis tools on the ExPASy server. In The proteomics protocols handbook (pp. 571-607). Humana Press.
Chicago  
}
\examples{
# COMPARED TO ExPASy Compute pI/Mw tool
# http://web.expasy.org/compute_pi/
# SEQUENCE: QWGRRCCGWGPGRRYCVRWC 
# Theoretical pI/Mw: 9.88 / 2485.91 
  
mw("QWGRRCCGWGPGRRYCVRWC")
# [1] 2485.911
}