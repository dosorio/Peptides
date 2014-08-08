\name{AAcomp}
\alias{AAcomp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To compute the Amino-acid composition of a protein sequence
%%  ~~function to do ... ~~
}
\description{
Calculate the amount of amino acids of a particular class and reported as: tiny (A+C+G+S+T), small (A+B+C+D+G+N+P+S+T+V), aliphatic (A+I+L+V), aromatic (F+H+W+Y), non-polar (A+C+F+G+I+L+M+P+V+W+Y), polar (D+E+H+K+N+Q+R+S+T+Z), charged (B+D+E+H+K+R+Z), basic (H+K+R) and acidic (B+D+E+Z) using same function implemented in EMBOSS "pepstat".  
}
\usage{
aacomp(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino acid sequence string in upper case}
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
\note{
%%  ~~further notes~~
This function was originally written in \code{C} by Alan Bleasby (ajb@ebi.ac.uk) for EMBOSS package. Further information: http://emboss.sourceforge.net/apps/cvs/emboss/apps/pepstats.html
}
\references{
Roger G. Harrison "Expression of soluble heterologous proteins via fusion with NusA protein" in inNovations 11, June 2000, p 4 - 7.
}

\examples{
## AA composition of PDB: 1D9J Cecropin Peptide

aacomp("KWKLFKKIGIGKFLHSAKKFX")

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
# Acidic         0  0.00
}
