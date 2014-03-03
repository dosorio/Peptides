\name{AAcomp}
\alias{AAcomp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To compute the Amino-acid composition of a protein sequence
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
\value{
The output is an array with the number and percentage of amino acids of a particular class
\item{Tiny}{(A+C+G+S+T)}
\item{Small}{(A+B+C+D+G+N+P+S+T+V)}
\item{Aliphatic}{(A+I+L+V)}
\item{Aromatic}{(F+H+W+Y)}
\item{Non-polar}{(A+C+F+G+I+L+M+P+V+W+Y)}
\item{Polar}{(D+E+H+K+N+Q+R+S+T+Z)}
\item{Charged}{(B+D+E+H+K+R+Z)}
\item{Basic}{(H+K+R)}
\item{Acidic}{(B+D+E+Z)}
}
\references{
Roger G. Harrison "Expression of soluble heterologous proteins via fusion with NusA protein" in inNovations 11, June 2000, p 4 - 7.
}

\examples{
## AA composition of PDB: 1D9J Cecropin Peptide

AAcomp("KWKLFKKIGIGKFLHSAKKFX")

## Output
#          Number Mole\%
# Tiny           4 19.05
# Small          4 19.05
# Aliphatic      5 23.81
# Aromatic       5 23.81
# Non Polar     11 52.38
# Polar          9 42.86
# Charged        8 38.10
# Basic          8 38.10
# Acid           0  0.00
}
