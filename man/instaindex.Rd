\name{instaindex}
\alias{instaindex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the instability index of a protein sequence
}
\description{
This function calculates the instability index. A protein whose instability index is smaller than 40 is predicted as stable, a value above 40 predicts that the protein may be unstable.
}
\usage{
instaindex(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino-acid sequence string in upper case
}
}

\references{
Guruprasad K, Reddy BV, Pandit MW (1990). "Correlation between stability of a protein and its dipeptide composition: a novel approach for predicting in vivo stability of a protein from its primary sequence". Protein Eng. 4 (2): 155 - 61. doi:10.1093/protein/4.2.155
}

\examples{
instaindex("KLKLLLLLKLK")
instaindex("FLPLLLPLFLP")
}