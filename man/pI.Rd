\name{pI}
\alias{pI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the isoelectic point (pI) of a protein sequence
%%  ~~function to do ... ~~
}
\description{
The isoelectric point (pI), is the pH at which a particular molecule or surface carries no net electrical charge. 
}
\usage{
pI(seq,pKscale)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino acid sequence string in upper case}
  \item{pKscale}{a character string specifying the pK scale to be used; must be one of \code{"Bjellqvist"}, \code{"EMBOSS"}, \code{"Murray"}, \code{"Sillero"}, \code{"Solomon"}, \code{"Stryer"}, \code{"Lehninger"}, \code{"Dawson"} or \code{"Rodwell"} }
}
\examples{
pI("HPETLVKVKDAEDQLGARVGYIELDLNSGKILESFRPEERFPMMSTFKVLLCGAVLSRVDAGQEQ
LGRRIHYSQNDLVEYSPVTEKHLTDGMTVRELCSAAITMSDNTAANLLLTTIGGPKELTDFLRQIGDKE
TRLDRIEPDLNEGKLGDLRDTTTPKAIASTLRKLLTGELLTLASRQQLIDWMEADKVAGPLLRSALPAG
WFIADKSGAGERGSRGIIAALGPDGKPSRIVVIYTTGSQATMDERNRQIAEIGASLIKHW","Bje")
}