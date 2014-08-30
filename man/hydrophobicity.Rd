\name{hydrophobicity}
\alias{hydrophobicity}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the hydrophobicity index
%%  ~~function to do ... ~~
}
\description{
This function calculates the GRAVY hydrophobicity index of an amino acids sequence using one of the 24 scales availables on ExPASy "protscale"
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
hydrophobicity(seq,method)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino acid sequence string in upper case}
  \item{method}{a character string specifying the hydophobicity scale to be used; must be one of \code{"KyteDoolittle"}, \code{"AbrahamLeo"}, \code{"BullBreese"},\code{"Guy"}, \code{"Miyazawa"}, \code{"Roseman"}, \code{"Wolfenden"}, \code{"Wilson"}, \code{"Cowan3.4"}, \code{"Aboderin"}, \code{"Sweet"}, \code{"Eisenberg"}, \code{"HoppWoods"}, \code{"Manavalan"}, \code{"BlackMould"}, \code{"Fauchere"}, \code{"Janin"}, \code{"Rao"}, \code{"Tanford"}, \code{"Welling"}, \code{"Parker"}, \code{"Cowan7.5"}, \code{"Chothia"} or \code{"Rose"}.
}
}
\source{
http://web.expasy.org/protscale/
}
\references{
Gasteiger, E., Hoogland, C., Gattiker, A., Wilkins, M. R., Appel, R. D., & Bairoch, A. (2005). Protein identification and analysis tools on the ExPASy server. In The proteomics protocols handbook (pp. 571-607). Humana Press.

Eisenberg D., Schwarz E., Komarony M., Wall R. Normalized consensus hydrophobicity scale. J. Mol. Biol. 179:125-142(1984).

Sweet R.M., Eisenberg D. Optimized matching hydrophobicity (OMH). J. Mol. Biol. 171:479-488(1983).

Hopp T.P., Woods K.R. Hydrophilicity. Proc. Natl. Acad. Sci. U.S.A. 78:3824-3828(1981).

Kyte J., Doolittle R.F. Hydropathicity. J. Mol. Biol. 157:105-132(1982).

Manavalan P., Ponnuswamy Average surrounding hydrophobicity. P.K. Nature 275:673-674(1978).

Abraham D.J., Leo A.J. Hydrophobicity (delta G1/2 cal). Proteins: Structure, Function and Genetics 2:130-152(1987).

Black S.D., Mould D.R. Hydrophobicity of physiological L-alpha amino acids. Anal. Biochem. 193:72-82(1991).

Bull H.B., Breese K. Hydrophobicity (free energy of transfer to surface in kcal/mole). Arch. Biochem. Biophys. 161:665-670(1974).

Fauchere J.-L., Pliska V.E. Hydrophobicity scale (pi-r). Eur. J. Med. Chem. 18:369-375(1983).

Guy H.R. Hydrophobicity scale based on free energy of transfer (kcal/mole). Biophys J. 47:61-70(1985).

Janin J. Free energy of transfer from inside to outside of a globular protein. Nature 277:491-492(1979).

Miyazawa S., Jernigen R.L. Hydrophobicity scale (contact energy derived from 3D data). Macromolecules 18:534-552(1985).

Rao M.J.K., Argos P. Membrane buried helix parameter. Biochim. Biophys. Acta 869:197-214(1986).

Roseman M.A. Hydrophobicity scale (pi-r). J. Mol. Biol. 200:513-522(1988).

Tanford C. Hydrophobicity scale (Contribution of hydrophobic interactions to the stability of the globular conformation of proteins). J. Am. Chem. Soc. 84:4240-4274(1962).

Wolfenden R.V., Andersson L., Cullis P.M., Southgate C.C.F. Hydration potential (kcal/mole) at 25C. Biochemistry 20:849-855(1981).

Welling G.W., Weijer W.J., Van der Zee R., Welling-Wester S. Antigenicity value X 10. FEBS Lett. 188:215-218(1985).

Wilson K.J., Honegger A., Stotzel R.P., Hughes G.J. Hydrophobic constants derived from HPLC peptide retention times. Biochem. J. 199:31-41(1981).

Parker J.M.R., Guo D., Hodges R.S. Hydrophilicity scale derived from HPLC peptide retention times. Biochemistry 25:5425-5431(1986).

Cowan R., Whittaker R.G. Hydrophobicity indices at ph 3.4 determined by HPLC. Peptide Research 3:75-80(1990).

Cowan R., Whittaker R.G. Hydrophobicity indices at ph 7.5 determined by HPLC. Peptide Research 3:75-80(1990).

Rose G.D., Geselowitz A.R., Lesser G.J., Lee R.H., Zehfus M.H. Mean fractional area loss (f) [average area buried/standard state area]. Science 229:834-838(1985)
}
\examples{
# COMPARED TO GRAVY Grand average of hydropathicity (GRAVY) ExPASy
# http://web.expasy.org/cgi-bin/protparam/protparam
# SEQUENCE: QWGRRCCGWGPGRRYCVRWC
# GRAVY: -0.950

hydrophobicity("QWGRRCCGWGPGRRYCVRWC","KyteDoolittle")
# [1] -0.95
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","AbrahamLeo")
# [1] 0.09
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","BullBreese")
# [1] 0.16
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Guy")
# [1] 0.19
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Miyazawa")
# [1] 5.74
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Roseman")
# [1] -0.5
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Wolfenden")
# [1] -6.31
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Wilson")
# [1] 3.16
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Cowan3.4")
# [1] 0.08
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Aboderin")
# [1] 3.84
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Sweet")
# [1] -0.11
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Eisenberg")
# [1] -0.33
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","HoppWoods")
# [1] -0.14
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Manavalan")
# [1] 13.04
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","BlackMould")
# [1] 0.5
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Fauchere")
# [1] 0.53
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Janin")
# [1] -0.1
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Rao")
# [1] 0.81
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Tanford")
# [1] -0.29
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Welling")
# [1] -0.67
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Parker")
# [1] 1.1
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Cowan7.5")
# [1] 0.06
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Chothia")
# [1] 0.26
hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Rose")
# [1] 0.76
}
