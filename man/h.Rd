\name{h}
\alias{h}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To compute the Eisenberg (1984) hydrophobicity index
%%  ~~function to do ... ~~
}
\description{
Hydrophobicity scales are values that define relative hydrophobicity of amino acid residues. These scales are commonly used to predict the transmembrane alpha-helices of membrane proteins. When consecutively measuring amino acids of a protein, changes in value indicate attraction of specific protein regions towards the hydrophobic region inside lipid bilayer. This index is calculated using the scale proposed by Eisenberg in 1984.
}
\usage{
h(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case
%%     ~~Describe \code{x} here~~
}
}

\references{
Eisenberg, David. "Three-dimensional structure of membrane and surface proteins." Annual review of biochemistry 53.1 (1984): 595-623.
}

\examples{
# Hydrohobicity index of Urocortin 1
h("DNPSLSIDLTFHLLRTLLELARTQSQRERAEQNRIIFDSV")
}
