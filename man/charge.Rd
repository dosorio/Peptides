\name{charge}
\alias{charge}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the theoretical net charge of a protein sequence
%%  ~~function to do ... ~~
}
\description{
This function calculates the theoretical net charge of a protein at defined pH and pK scale. Six pK scales are currently available.

}
\usage{
charge(seq, pH, pKscale)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino acid sequence as string in upper case}
  \item{pH}{pH value}
  \item{pKscale}{a character string specifying the pK scale to be used; must be one of \code{"Bjellqvist"}, \code{"EMBOSS"}, \code{"Murray"}, \code{"Sillero"}, \code{"Solomon"} or \code{"Stryer"}}
}

\references{
Charif, D., & Lobry, J. R. (2007). SeqinR 1.0-2: a contributed package to the R project for statistical computing devoted to biological sequences retrieval and analysis. In Structural approaches to sequence evolution (pp. 207-232). Springer Berlin Heidelberg.

Gasteiger, E., Hoogland, C., Gattiker, A., Wilkins, M. R., Appel, R. D., & Bairoch, A. (2005). Protein identification and analysis tools on the ExPASy server. In The proteomics protocols handbook (pp. 571-607). Humana Press.

Kiraga, J. (2008) Analysis and computer simulations of variability of isoelectric point of proteins in the proteomes. PhD thesis, University of Wroclaw, Poland.

Bjellqvist, B., Hughes, G.J., Pasquali, Ch., Paquet, N., Ravier, F., Sanchez, J.Ch., Frutige,r S., Hochstrasser D. (1993) The focusing positions of polypeptides in immobilized pH gradients can be predicted from their amino acid sequences. Electrophoresis, 14:1023-1031.

EMBOSS data are from http://emboss.sourceforge.net/apps/release/5.0/emboss/apps/iep.html.

Murray, R.K., Granner, D.K., Rodwell, V.W. (2006) Harper's illustrated Biochemistry. 27th edition. Published by The McGraw-Hill Companies.

Sillero, A., Maldonado, A. (2006) Isoelectric point determination of proteins and other macromolecules: oscillating method. Comput Biol Med., 36:157-166.

Solomon, T.W.G. (1998) Fundamentals of Organic Chemistry, 5th edition. Published by Wiley.

Stryer L. (1999) Biochemia. czwarta edycja. Wydawnictwo Naukowe PWN.
}
\note{
This function is the same include inside \code{"computePI"} function of Charif, D. and Lobry, J.R. (2007) \code{"seqinR 3.0-7"} package. The function was modify to use diferent pKa scales and an amino acid string as input.
}
\source{
pK data from Charif, D., & Lobry, J. R. (2007) \code{"seqinR 3.0-7"} R Package.
}

\seealso{
\code{\link{computePI}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
charge(seq="ILGKIWEGIKSLF",pH=5, pKscale="Bje")
charge(seq="ILGKIWEGIKSLF",pH=7, pKscale="Bje")
charge(seq="ILGKIWEGIKSLF",pH=5, pKscale="EMB")

}