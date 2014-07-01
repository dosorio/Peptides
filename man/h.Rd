\name{H}
\alias{H}
\docType{data}
\title{Hydrophobicity scales
%%   ~~ data name/kind ... ~~
}
\description{24 Hydrophobicity scales
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(H)}
\format{
  A list with 24 Hydrophobicity scales.
  \describe{
    \item{\code{H$KyteDoolittle}}{}
    \item{\code{H$AbrahamLeo}}{}
    \item{\code{H$BullBreese}}{}
    \item{\code{H$Guy}}{}
    \item{\code{H$Miyazawa}}{}
    \item{\code{H$Roseman}}{}
    \item{\code{H$Wolfenden}}{}
    \item{\code{H$Wilson}}{}
    \item{\code{H$Cowan3.4}}{}
    \item{\code{H$Aboderin}}{}
    \item{\code{H$Sweet}}{}
    \item{\code{H$Eisenberg}}{}
    \item{\code{H$HoppWoods}}{}
    \item{\code{H$Manavalan}}{}
    \item{\code{H$BlackMould}}{}
    \item{\code{H$Fauchere}}{}
    \item{\code{H$Janin}}{}
    \item{\code{H$Rao}}{}
    \item{\code{H$Tanford}}{}
    \item{\code{H$Welling}}{}
    \item{\code{H$Parker}}{}
    \item{\code{H$Cowan7.5}}{}
    \item{\code{H$Chothia}}{}
    \item{\code{H$Rose}}{}
    }
}
\details{
Hydrophobicity scales are values that define relative hydrophobicity of amino acid residues. The more positive the value, the more hydrophobic are the amino acids located in that region of the protein.
}
\source{
ExPASy-Protscale (http://web.expasy.org/protscale/)}
\references{
Sweet R.M., Eisenberg D. J. Mol. Biol. 171:479-488(1983).
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(H)
## maybe str(H) ; plot(H) ...
}
\keyword{datasets}
