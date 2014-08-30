\name{lengthpep}
\alias{lengthpep}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the amino acid length of a protein sequence
%%  ~~function to do ... ~~
}
\description{This function counts the number of amino acids in a protein sequence 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
lengthpep(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino acid sequence string
}
}

\value{
Return the residue count as a numeric vector of length one}

\examples{
# COMPARED TO ExPASy ProtParam
# http://web.expasy.org/protparam
# SEQUENCE: QWGRRCCGWGPGRRYCVRWC
# Number of amino acids: 20
  
lengthpep("QWGRRCCGWGPGRRYCVRWC")
# [1] 20
}