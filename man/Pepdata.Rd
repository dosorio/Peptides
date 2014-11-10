\name{pepdata}
\alias{pepdata}
\docType{data}
\title{
Physicochemical properties and indices from 100 amino acid sequences
}
\description{
Physicochemical properties and indices from 100 amino acid sequences (50 antimicrobial and 50 non antimicrobial)
}
\usage{data(pepdata)}
\format{
  A data frame with 100 observations on the following 23 variables.
  \describe{
    \item{\code{sequence}}{a character vector with the sequences of 100 peptides (50 antimicrobial and 50 non-antimicrobial)}
    \item{\code{group}}{Integrer vector with the group code \code{"0"} for non antimicrobial and \code{"1"} for antimicrobial}
    \item{\code{length}}{a numeric vector with the length of the amino acid sequence}
    \item{\code{mw}}{a numeric vector with the molecular weight of the amino acid sequence}
    \item{\code{tinyAA}}{A numeric vector with the fraction (as percent) of tiny amino acids that make up the sequence}
    \item{\code{smallAA}}{A numeric vector with the fraction (as percent) of small amino acids that make up the sequence}
    \item{\code{aliphaticAA}}{A numeric vector with the fraction (as percent) of aliphatic amino acids that make up the sequence}
    \item{\code{aromaticAA}}{A numeric vector with the fraction (as percent) of aromatic amino acids that make up the sequence}
    \item{\code{nonpolarAA}}{A numeric vector with the fraction (as percent) of non-polar amino acids that make up the sequence}
    \item{\code{polarAA}}{A numeric vector with the fraction (as percent) of polar amino acids that make up the sequence}
    \item{\code{chargedAA}}{A numeric vector with the fraction (as percent) of charged amino acids that make up the sequence}
    \item{\code{basicAA}}{A numeric vector with the fraction (as percent) of basic amino acids that make up the sequence}
    \item{\code{acidicAA}}{A numeric vector with the fraction (as percent) of acid amino acids that make up the sequence}
    \item{\code{charge}}{a numeric vector with the charge of the amino acid sequence}
    \item{\code{pI}}{a numeric vector with the isoelectric point of the amino acid sequence}
    \item{\code{aindex}}{a numeric vector with the aliphatic index of the amino acid sequence}
    \item{\code{instaindex}}{a numeric vector with the instability index of the amino acid sequence}
    \item{\code{boman}}{{a numeric vector with the potential peptide-interaction index of the amino acid sequence}}
    \item{\code{hydrophobicity}}{{a numeric vector with the hydrophobicity index of the amino acid sequence}}
    \item{\code{hmoment}}{a numeric vector with the hydrophobic moment of the amino acid sequence}
    \item{\code{transmembrane}}{A numeric vector with the fraction of Transmembrane windows of 11 amino acids that make up the sequence}
    \item{\code{surface}}{A numeric vector with the fraction of Surface windows of 11 amino acids that make up the sequence}
    \item{\code{globular}}{A numeric vector with the fraction of Globular windows of 11 amino acids that make up the sequence}
  }
}

\examples{
data(pepdata)
}
\keyword{datasets}
