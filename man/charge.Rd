\name{charge}
\alias{charge}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To compute the theoretical Net charge of a protein sequence
%%  ~~function to do ... ~~
}
\description{
This function calculates the theoretical net charge of a protein at defined pH.
}
\usage{
charge(seq, pH)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{Protein sequence as string in upper case}
  \item{pH}{pH value}
}

\references{
Protein Identification and Analysis Tools on the ExPASy Server;
Gasteiger E., Hoogland C., Gattiker A., Duvaud S., Wilkins M.R., Appel R.D., Bairoch A.;
(In) John M. Walker (ed): The Proteomics Protocols Handbook, Humana Press (2005). 
pp. 571-607 
}
\note{
Modified from \code{\link{computePI}} \code{\link{seqinr}} function.
}

\seealso{
\code{\link{computePI}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
charge(seq="ILGKIWEGIKSLF",pH=5)
charge(seq="ILGKIWEGIKSLF",pH=9)
}