\name{plot.xvg}
\alias{plot.xvg}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot time series from GROMACS XVG files
%%  ~~function to do ... ~~
}
\description{
Read and plot output data from a XVG format file.
}
\usage{
plot.xvg(file)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{a .XVG output file from GROMACS.
%%     ~~Describe \code{x} here~~
}
}
\details{
XVG is the default format file from GROMACS molecular dynamics package, contains data formatted for import into the Grace 2-D plotting program.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Pronk, S., Páll, S., Schulz, R., Larsson, P., Bjelkmar, P., Apostolov, R., ... & Lindahl, E. (2013). GROMACS 4.5: a high-throughput and highly parallel open source molecular simulation toolkit. Bioinformatics, 29 (7), 845-854.
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
plot.xvg(system.file("xvg-files/epot.xvg",package="Peptides"))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
