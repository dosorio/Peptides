\name{kidera}
\alias{kidera}
\title{Compute the Kidera factors
}
\description{
The Kidera Factors were originally derived by applying multivariate analysis to 188 physical properties of the 20 amino acids and using dimension reduction techniques. This function calculates the average of a factor using one of the ten Kidera factors.
}
\usage{
kidera(seq)
}

\arguments{
  \item{seq}{amino acid sequence string in upper case}
}

\references{
Kidera, A., Konishi, Y., Oka, M., Ooi, T., & Scheraga, H. A. (1985). Statistical analysis of the physical properties of the 20 naturally occurring amino acids. Journal of Protein Chemistry, 4(1), 23-55.
}

\examples{
kidera(seq = "KLKLLLLLKLK")
}
