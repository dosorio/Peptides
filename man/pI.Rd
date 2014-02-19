\name{pI}
\alias{pI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To calculate the isoelectic point (pI)
%%  ~~function to do ... ~~
}
\description{
The isoelectric point (pI), sometimes abbreviated to IEP, is the pH at which a particular molecule or surface carries no net electrical charge.
}
\usage{
pI(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case
%%     ~~Describe \code{x} here~~
}
}
\seealso{
\code{\link{computePI}}
}
\examples{
pI("KLKLLLLLKLK")
pI("FLPLLLPLFLP")
}