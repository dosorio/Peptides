\name{AI}
\alias{AI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To compute the Aliphatic index of a protein sequence
%%  ~~function to do ... ~~
}
\description{
The aliphatic index of a protein is defined as the relative volume occupied by aliphatic side chains (alanine, valine, isoleucine, and leucine). It may be regarded as a positive factor for the increase of thermostability of globular proteins.
}
\usage{
AI(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case
}
}

\references{
Atsushi, I. K. A. I. (1980). Thermostability and aliphatic index of globular proteins. Journal of Biochemistry, 88(6), 1895-1898.
ISO 690  
}

\examples{
AI("KLKLLLLLKLK")
AI("FLPLLLPLFLP")
}