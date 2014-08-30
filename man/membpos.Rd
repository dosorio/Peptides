\name{membpos}
\alias{membpos}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute theoretically the class of a protein sequence
%%  ~~function to do ... ~~
}
\description{This function calculates the theoretical class of a protein sequence based on the relationship between the hydrophobic moment and hydrophobicity scale proposed by Eisenberg (1984).
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
membpos(seq,angle)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino acid sequence string}
  \item{angle}{Protein rotational angle}
}
\references{
Eisenberg, David. "Three-dimensional structure of membrane and surface proteins." Annual review of biochemistry 53.1 (1984): 595-623.
}
\examples{
membpos("ARQQNLFINFCLILIFLLLI",100)

#             Pep     H   uH       MembPos
#  1  ARQQNLFINFC -0.01 0.40      Globular
#  2  RQQNLFINFCL  0.03 0.40      Globular
#  3  QQNLFINFCLI  0.39 0.21      Globular
#  4  QNLFINFCLIL  0.56 0.29 Transmembrane
#  5  NLFINFCLILI  0.77 0.29       Surface
#  6  LFINFCLILIF  0.95 0.21       Surface
#  7  FINFCLILIFL  0.95 0.16 Transmembrane
#  8  INFCLILIFLL  0.93 0.15 Transmembrane
#  9  NFCLILIFLLL  0.90 0.15 Transmembrane
#  10 FCLILIFLLLI  1.10 0.16       Surface

membpos("ARQQNLFINFCLILIFLLLI",160)

#             Pep     H   uH       MembPos
#  1  ARQQNLFINFC -0.01 0.53      Globular
#  2  RQQNLFINFCL  0.03 0.44      Globular
#  3  QQNLFINFCLI  0.39 0.33      Globular
#  4  QNLFINFCLIL  0.56 0.33 Transmembrane
#  5  NLFINFCLILI  0.77 0.35       Surface
#  6  LFINFCLILIF  0.95 0.35       Surface
#  7  FINFCLILIFL  0.95 0.39       Surface
#  8  INFCLILIFLL  0.93 0.39       Surface
#  9  NFCLILIFLLL  0.90 0.18 Transmembrane
#  10 FCLILIFLLLI  1.10 0.18       Surface
}
