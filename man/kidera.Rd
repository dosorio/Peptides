\name{kidera}
\alias{kidera}
\title{Compute the Kidera factors
}
\description{
The Kidera Factors were originally derived by applying multivariate analysis to 188 physical properties of the 20 amino acids and using dimension reduction techniques. This function calculates the average of a factor using one of the ten Kidera factors.
}
\usage{
kidera(seq,factor)
}

\arguments{
  \item{seq}{amino acid sequence string in upper case}
  \item{factor}{a character string specifying the Kidera factor to be used; must be one of \code{"helix.bend.pref"}, \code{"side.chain.size"}, \code{"extended.str.pref"}, \code{"hydrophobicity"}, \code{"double.bend.pref"}, \code{"partial.spec.vol"}, \code{"flat.ext.pref"}, \code{"occurrence.alpha.reg"}, \code{"pK.C"}, \code{"surrounding.hydrop"}}
}

\references{
Kidera, A., Konishi, Y., Oka, M., Ooi, T., & Scheraga, H. A. (1985). Statistical analysis of the physical properties of the 20 naturally occurring amino acids. Journal of Protein Chemistry, 4(1), 23-55.
}

\examples{
kidera(seq = "KLKLLLLLKLK", factor = "helix.bend.pref")
# [1] -0.7854545

kidera(seq = "KLKLLLLLKLK", factor = "side.chain.size")
# [1] 0.2981818

kidera(seq = "KLKLLLLLKLK", factor = "extended.str.pref")
# [1] -0.2363636

kidera(seq = "KLKLLLLLKLK", factor = "hydrophobicity")
# [1] -0.08181818

kidera(seq = "KLKLLLLLKLK", factor = "double.bend.pref")
# [1] 0.21

kidera(seq = "KLKLLLLLKLK", factor = "partial.spec.vol")
# [1] -1.893636

kidera(seq = "KLKLLLLLKLK", factor = "flat.ext.pref")
# [1] 1.029091

kidera(seq = "KLKLLLLLKLK", factor = "occurrence.alpha.reg")
# [1] -0.5127273

kidera(seq = "KLKLLLLLKLK", factor = "pK.C")
# [1] 0.1118182

kidera(seq = "KLKLLLLLKLK", factor = "surrounding.hydrop")
# [1] 0.81
}
