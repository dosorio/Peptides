\name{hmoment}
\alias{hmoment}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To compute the hydrophobic moment of a protein sequence
%%  ~~function to do ... ~~
}
\description{
Hydriphobic moment is a quantitative measure of the amphiphilicity perpendicular to the axis of any periodic peptide structure, such as the a-helix or b-sheet. It can be calculated for an amino acid sequence of N residues and their associated hydrophobicities Hn. If the secuence length is < 11 AA, the window length is equal to the AA sequence length, if it is > 11, windows of 11 residues are evaluated}
\usage{
hmoment(seq,structure)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case}
  \item{structure}{Three dimentional structure of protein. If it is alpha-helix type \code{"a"} or if it is beta-sheet type \code{"b"}}
}
\value{
The max hydrophobic moment (uH) as a numerical vector of length one}
\references{
Eisenberg, David. "Three-dimensional structure of membrane and surface proteins." Annual review of biochemistry 53.1 (1984): 595-623.
}
\examples{
# Hydrophobic moment of PDB: 1MP6 M2 protein 

hmoment("SSDPLVVAASIIGILHLILWILDRL","a") 

## Output
# [1] 0.51

}