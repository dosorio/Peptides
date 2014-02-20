\name{II}
\alias{II}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ To compute the Instability Index of a protein sequence
}
\description{
The instability index provides an estimate of the stability of your protein in a test tube. Statistical analysis of 12 unstable and 32 stable proteins has revealed that there are certain dipeptides, the occurence of which is significantly different in the unstable proteins compared with those in the stable ones.A protein whose instability index is smaller than 40 is predicted as stable, a value above 40 predicts that the protein may be unstable.
}
\usage{
II(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case
}
}

\references{
Guruprasad K, Reddy BV, Pandit MW (1990). "Correlation between stability of a protein and its dipeptide composition: a novel approach for predicting in vivo stability of a protein from its primary sequence". Protein Eng. 4 (2): 155 - 61. doi:10.1093/protein/4.2.155
}

\examples{
II("KLKLLLLLKLK")
II("FLPLLLPLFLP")
}