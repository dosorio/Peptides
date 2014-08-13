\name{aindex}
\alias{aindex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the aliphatic index (Ikai, 1980) of a protein sequence
%%  ~~function to do ... ~~
}
\description{
The aliphatic index of a protein is defined as the relative volume occupied by aliphatic side chains (alanine, valine, isoleucine, and leucine). It may be regarded as a positive factor for the increase of thermostability of globular proteins. This function calculates the percentage of each of the aliphatic amino acids and multiplies it by the values suggested by Ikai (1980)
}
\usage{
aindex(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino-acid sequence string in upper case
}
}

\references{
Ikai (1980). Thermostability and aliphatic index of globular proteins. Journal of Biochemistry, 88(6), 1895-1898.
}

\examples{
# Aliphatic index of a Globular Miniprotein PDB: 2JOF

# aindex("DAYAQWLKDGGPSSGRPPPS")
# 29.5

}