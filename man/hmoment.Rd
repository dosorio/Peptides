\name{hmoment}
\alias{hmoment}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the hydrophobic moment of a protein sequence
%%  ~~function to do ... ~~
}
\description{
This function compute the hmoment based on Eisenberg, D., Weiss, R. M., & Terwilliger, T. C. (1984). Hydriphobic moment is a quantitative measure of the amphiphilicity perpendicular to the axis of any periodic peptide structure, such as the a-helix or b-sheet. It can be calculated for an amino acid sequence of N residues and their associated hydrophobicities Hn. An 11 residues window is used as default.}

\usage{
hmoment(seq,angle,window)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{Amino acid sequence as string}
  \item{angle}{Protein rotational angle}
  \item{window}{Sequence fraction length}
}
\value{
The max hydrophobic moment (uH) as a numerical vector of length one}
\source{
This function was written by an anonymous referee of the RJournal
}
\references{
Eisenberg, D., Weiss, R. M., & Terwilliger, T. C. (1984). The hydrophobic moment detects periodicity in protein hydrophobicity. Proceedings of the National Academy of Sciences, 81(1), 140-144.
}
\examples{
# COMPARED TO EMBOSS:HMOMENT
# http://emboss.bioinformatics.nl/cgi-bin/emboss/hmoment
# SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
# ALPHA-HELIX ANGLE=100 : 0.52
# BETA-SHEET  ANGLE=160 : 0.271
  
# ALPHA HELIX VALUE
hmoment(seq = "FLPVLAGLTPSIVPKLVCLLTKKC", angle = 100, window = 11)
# [1] 0.5199226
  
# BETA SHEET VALUE
hmoment(seq = "FLPVLAGLTPSIVPKLVCLLTKKC", angle = 160, window = 11)
# [1] 0.2705906
}