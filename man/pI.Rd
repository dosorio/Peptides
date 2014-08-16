\name{pI}
\alias{pI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the isoelectic point (pI) of a protein sequence
%%  ~~function to do ... ~~
}
\description{
The isoelectric point (pI), is the pH at which a particular molecule or surface carries no net electrical charge. It is the same function \code{\link{computePI}} include in \code{\link{seqinr} 3.0-7} R package modified to read strings directly.
}
\usage{
pI(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino acid sequence string in upper case
%%     ~~Describe \code{x} here~~
}
}
\seealso{
\code{\link{computePI}}
}
\references{
Charif, D., & Lobry, J. R. (2007). SeqinR 1.0-2: a contributed package to the R project for statistical computing devoted to biological sequences retrieval and analysis. In Structural approaches to sequence evolution (pp. 207-232). Springer Berlin Heidelberg.
Chicago  

}
\examples{
pI("HPETLVKVKDAEDQLGARVGYIELDLNSGKILESFRPEERFPMMSTFKVLLCGAVLSRVDAGQEQ
LGRRIHYSQNDLVEYSPVTEKHLTDGMTVRELCSAAITMSDNTAANLLLTTIGGPKELTDFLRQIGDKE
TRLDRIEPDLNEGKLGDLRDTTTPKAIASTLRKLLTGELLTLASRQQLIDWMEADKVAGPLLRSALPAG
WFIADKSGAGERGSRGIIAALGPDGKPSRIVVIYTTGSQATMDERNRQIAEIGASLIKHW")
}