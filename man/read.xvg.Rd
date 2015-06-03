\name{read.xvg}
\alias{read.xvg}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Read XVG files from GROMACS Molecular Dynamics package
%%  ~~function to do ... ~~
}
\description{
Read output data from a XVG format file.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
read.xvg(file)
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

\references{
Pronk, S., Pall, S., Schulz, R., Larsson, P., Bjelkmar, P., Apostolov, R., ... & Lindahl, E. (2013). GROMACS 4.5: a high-throughput and highly parallel open source molecular simulation toolkit. Bioinformatics, 29 (7), 845-854.
}

\examples{
# READING FILE
file <- system.file("xvg-files/epot.xvg",package="Peptides")
read.xvg(file)

#    Time (ps)  Potential
#  1         1 6672471040
#  2         2 6516461568
#  3         3 6351947264
#  4         4 6183133184
#  5         5 6015310336
#  6         6 5854271488
}