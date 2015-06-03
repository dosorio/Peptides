\name{aindex}
\alias{aindex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the aliphatic index of a protein sequence
%%  ~~function to do ... ~~
}
\description{
This function calculates the Ikai (1980) aliphatic index of a protein. The \code{aindex} is defined as the relative volume occupied by aliphatic side chains (Alanine, Valine, Isoleucine, and Leucine). It may be regarded as a positive factor for the increase of thermostability of globular proteins.  
} 
\usage{
aindex(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino acid sequence string}
}

\references{
Ikai (1980). Thermostability and aliphatic index of globular proteins. Journal of Biochemistry, 88(6), 1895-1898.
}

\examples{
# COMPARED TO ExPASy ALIPHATIC INDEX
# http://web.expasy.org/protparam/
# SEQUENCE: SDKEVDEVDAALSDLEITLE
# Aliphatic index: 117.00
  
aindex("SDKEVDEVDAALSDLEITLE")
# [1] 117

}