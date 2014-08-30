\name{hmoment}
\alias{hmoment}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the hydrophobic moment of a protein sequence
%%  ~~function to do ... ~~
}
\description{
This function compute the hmoment based on Eisenberg, D., Weiss, R. M., & Terwilliger, T. C. (1984). Hydriphobic moment is a quantitative measure of the amphiphilicity perpendicular to the axis of any periodic peptide structure, such as the a-helix or b-sheet. It can be calculated for an amino acid sequence of N residues and their associated hydrophobicities Hn. If the secuence length is < 11 AA, the window length is equal to the AA sequence length, if it is > 11, windows of 11 residues are evaluated}

\usage{
hmoment(seq,angle)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino acid sequence as string}
  \item{angle}{Protein rotational angle}
}
\value{
The max hydrophobic moment (uH) as a numerical vector of length one}
\references{
Eisenberg, D., Weiss, R. M., & Terwilliger, T. C. (1984). The hydrophobic moment detects periodicity in protein hydrophobicity. Proceedings of the National Academy of Sciences, 81(1), 140-144.
}
\examples{
# COMPARED TO EMBOSS:HMOMENT
# http://emboss.bioinformatics.nl/cgi-bin/emboss/hmoment
# SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
# ALPHA-HELIX ANGLE=100 : 0.56
# BETA-SHEET  ANGLE=160 : 0.25
  
# ALPHA HELIX VALUE
hmoment("FLPVLAGLTPSIVPKLVCLLTKKC",100)
# [1] 0.56
  
# BETA SHEET VALUE
hmoment("FLPVLAGLTPSIVPKLVCLLTKKC",160)
# [1] 0.25
}