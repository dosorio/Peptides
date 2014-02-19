\name{aindex}
\alias{aindex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ To calculate the Aliphatic index
%%  ~~function to do ... ~~
}
\description{
The aliphatic index of a protein is defined as the relative volume occupied by aliphatic side chains (alanine, valine, isoleucine, and leucine). It may be regarded as a positive factor for the increase of thermostability of globular proteins.
}
\usage{
aindex(seq)
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
Atsushi, I. K. A. I. (1980). Thermostability and aliphatic index of globular proteins. Journal of Biochemistry, 88(6), 1895-1898.
ISO 690  

}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
aindex("KLKLLLLLKLK")
aindex("FLPLLLPLFLP")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
