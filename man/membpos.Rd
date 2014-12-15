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
# 1 ARQQNLFINFCL 0.083 0.353      Globular
# 2 RQQNLFINFCLI 0.147 0.317      Globular
# 3 QQNLFINFCLIL 0.446 0.274      Globular
# 4 QNLFINFCLILI 0.632 0.274 Transmembrane
# 5 NLFINFCLILIF 0.802 0.253       Surface
# 6 LFINFCLILIFL 0.955 0.113 Transmembrane
# 7 FINFCLILIFLL 0.955 0.113 Transmembrane
# 8 INFCLILIFLLL 0.944 0.108 Transmembrane
# 9 NFCLILIFLLLI 0.944 0.132 Transmembrane

membpos("ARQQNLFINFCLILIFLLLI",160)

#             Pep     H   uH       MembPos
# 1 ARQQNLFINFCL 0.083 0.467  Globular
# 2 RQQNLFINFCLI 0.147 0.467  Globular
# 3 QQNLFINFCLIL 0.446 0.285  Globular
# 4 QNLFINFCLILI 0.632 0.358  Surface
# 5 NLFINFCLILIF 0.802 0.358  Surface
# 6 LFINFCLILIFL 0.955 0.269  Surface
# 7 FINFCLILIFLL 0.955 0.269  Surface
# 8 INFCLILIFLLL 0.944 0.257  Surface
# 9 NFCLILIFLLLI 0.944 0.229  Surface
}
