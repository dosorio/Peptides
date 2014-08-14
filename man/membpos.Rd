\name{membpos}
\alias{membpos}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute theoretically the class of a protein sequence
%%  ~~function to do ... ~~
}
\description{This function calculates the theoretical class of a protein sequence based on the relationship between the hydrophobic moment and hydrophobicity scale proposed by Eisenberg in 1984
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
membpos(seq,angle)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case}
  \item{angle}{Protein rotational angle}
}
\references{
Eisenberg, David. "Three-dimensional structure of membrane and surface proteins." Annual review of biochemistry 53.1 (1984): 595-623.
}
\examples{
membpos("MDKVQYLTRSAIRRASTIEMPQQARQNLQNLFINFCLILIFLLLICIIVMLL",100)
}
