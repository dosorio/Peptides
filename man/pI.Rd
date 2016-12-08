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
# COMPARED TO ExPASy ProtParam
# http://web.expasy.org/cgi-bin/protparam/protparam
# SEQUENCE: QWGRRCCGWGPGRRYCVRWC
# Theoretical pI: 9.88

pI("QWGRRCCGWGPGRRYCVRWC","Bjellqvist")
# [1] 9.881

# COMPARED TO EMBOSS PEPSTATS
# http://emboss.bioinformatics.nl/cgi-bin/emboss/pepstats
# SEQUENCE: QWGRRCCGWGPGRRYCVRWC
# Isoelectric Point = 9.7158

pI("QWGRRCCGWGPGRRYCVRWC","EMBOSS")
# [1] 9.716

# OTHER SCALES

pI("QWGRRCCGWGPGRRYCVRWC","Murray")
# [1] 9.818
pI("QWGRRCCGWGPGRRYCVRWC","Sillero")
# [1] 9.891
pI("QWGRRCCGWGPGRRYCVRWC","Solomon")
# [1] 9.582
pI("QWGRRCCGWGPGRRYCVRWC","Stryer")
# [1] 9.623
pI("QWGRRCCGWGPGRRYCVRWC","Lehninger")
# [1] 9.931
pI("QWGRRCCGWGPGRRYCVRWC","Dawson")
# [1] 9.568
pI("QWGRRCCGWGPGRRYCVRWC","Rodwell")
# [1] 9.718
}