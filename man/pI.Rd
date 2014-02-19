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
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{computePI}}
}
\examples{
pI("KLKLLLLLKLK")
pI("FLPLLLPLFLP")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
