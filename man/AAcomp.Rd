\name{AAcomp}
\alias{AAcomp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To calculate the amino acid composition of a sequence
%%  ~~function to do ... ~~
}
\description{
Calculate the percentage of Amino acid in a sequence and categorized as: Tiny, Small, Aliphatic, Aromatic, Non Polar, Polar, Charged, Basic and Acid.  
}
\usage{
AAcomp(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case}
%%     ~~Describe \code{x} here~~
}

\examples{
AAcomp("KLKLLLLLKLK")
AAcomp("FLPLLLPLFLP")
}
