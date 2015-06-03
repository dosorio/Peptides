\name{instaindex}
\alias{instaindex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the instability index of a protein sequence
}
\description{
This function calculates the instability index proposed by Guruprasad (1990). A protein whose instability index is smaller than 40 is predicted as stable, a value above 40 predicts that the protein may be unstable.
}
\usage{
instaindex(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino acid sequence string
}
}

\references{
Guruprasad K, Reddy BV, Pandit MW (1990). "Correlation between stability of a protein and its dipeptide composition: a novel approach for predicting in vivo stability of a protein from its primary sequence". Protein Eng. 4 (2): 155 - 61. doi:10.1093/protein/4.2.155
}

\examples{
# COMPARED TO ExPASy INSTAINDEX
# http://web.expasy.org/protparam/
# SEQUENCE: QWGRRCCGWGPGRRYCVRWC
# The instability index (II) is computed to be 83.68

instaindex("QWGRRCCGWGPGRRYCVRWC")
# [1] 83.68
}