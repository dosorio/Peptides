\name{KD}
\alias{KD}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To calculate Kyte-Doolittle hydrophobicity index
%%  ~~function to do ... ~~
}
\description{
Hydrophobicity scales are values that define relative hydrophobicity of amino acid residues. The more positive the value, the more hydrophobic are the amino acids located in that region of the protein. These scales are commonly used to predict the transmembrane alpha-helices of membrane proteins. When consecutively measuring amino acids of a protein, changes in value indicate attraction of specific protein regions towards the hydrophobic region inside lipid bilayer.
}
\usage{
KD(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case
%%     ~~Describe \code{x} here~~
}
}

\references{
Kyte, J., & Doolittle, R. F. (1982). A simple method for displaying the hydropathic character of a protein. Journal of molecular biology, 157(1), 105-132.
}

\examples{
KD("KLKLLLLLKLK")
KD("FLPLLLPLFLP")
}
