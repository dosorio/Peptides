\name{aacomp}
\alias{aacomp}

\title{Compute the amino acid composition of a protein sequence
}

\description{
This function calculates the amount of amino acids of a particular class and classified as: Tiny, Small, Aliphatic, Aromatic, Non-polar, Polar, Charged, Basic and Acidic based on their size and R-groups using same function implemented in EMBOSS "pepstat". The output is a matrix with the number and percentage of amino acids of a particular class 
}

\usage{
aacomp(seq)
}

\arguments{
  \item{seq}{amino acid sequence string}
}

\value{
The output is a matrix with the number and percentage of amino acids of a particular class
\item{Tiny}{(A + C + G + S + T)}
\item{Small}{(A + B + C + D + G + N + P + S + T + V)}
\item{Aliphatic}{(A + I + L + V)}
\item{Aromatic}{(F + H + W + Y)}
\item{Non-polar}{(A + C + F + G + I + L + M + P + V + W + Y)}
\item{Polar}{(D + E + H + K + N + Q + R + S + T + Z)}
\item{Charged}{(B + D + E + H + K + R + Z)}
\item{Basic}{(H + K + R)}
\item{Acidic}{(B + D + E + Z)}
}
\note{
%%  ~~further notes~~
This function was originally written by Alan Bleasby (ajb@ebi.ac.uk) for EMBOSS package. Further information: http://emboss.sourceforge.net/apps/cvs/emboss/apps/pepstats.html
}
\references{
Rice, Peter, Ian Longden, and Alan Bleasby. "EMBOSS: the European molecular biology open software suite." Trends in genetics 16.6 (2000): 276-277.
}
\examples{
# COMPARED TO PEPSTATS
# http://emboss.bioinformatics.nl/cgi-bin/emboss/pepstats
# Property      Residues              Number  Mole\%
# Tiny          (A+C+G+S+T)             4   19.048
# Small         (A+B+C+D+G+N+P+S+T+V)   4   19.048
# Aliphatic     (A+I+L+V)               5   23.810
# Aromatic      (F+H+W+Y)               5   23.810
# Non-polar     (A+C+F+G+I+L+M+P+V+W+Y) 11  52.381
# Polar         (D+E+H+K+N+Q+R+S+T+Z)   9   42.857
# Charged       (B+D+E+H+K+R+Z)         8   38.095
# Basic         (H+K+R)                 8   38.095
# Acidic        (B+D+E+Z)               0   00.000

## AA composition of PDB: 1D9J Cecropin Peptide
aacomp("KWKLFKKIGIGKFLHSAKKFX")

## Output
#          Number Mole\%
# Tiny           4 19.048
# Small          4 19.048
# Aliphatic      5 23.810
# Aromatic       5 23.810
# NonPolar      11 52.381
# Polar          9 42.857
# Charged        8 38.095
# Basic          8 38.095
# Acidic         0  0.000
}
