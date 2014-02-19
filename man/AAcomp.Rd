\name{AAcomp}
\alias{AAcomp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To calculate the amino acid composition of a sequence
%%  ~~function to do ... ~~
}
\description{
Calculate the percentage of Amino acid in a sequence and categorized as: Tiny, Small, Aliphatic, Aromatic, Non Polar, Polar, Charged, Basic and Acid.  
}
\usage{
AAcomp(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case}
%%     ~~Describe \code{x} here~~
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
AAcomp("KLKLLLLLKLK")
AAcomp("FLPLLLPLFLP")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
