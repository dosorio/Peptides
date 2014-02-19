\name{aindex}
\alias{aindex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ To calculate the Aliphatic index
%%  ~~function to do ... ~~
}
\description{
The aliphatic index of a protein is defined as the relative volume occupied by aliphatic side chains (alanine, valine, isoleucine, and leucine). It may be regarded as a positive factor for the increase of thermostability of globular proteins.
}
\usage{
aindex(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case


%%     ~~Describe \code{x} here~~
}
}

\references{
Atsushi, I. K. A. I. (1980). Thermostability and aliphatic index of globular proteins. Journal of Biochemistry, 88(6), 1895-1898.
ISO 690  
}

\examples{
aindex("KLKLLLLLKLK")
aindex("FLPLLLPLFLP")
}