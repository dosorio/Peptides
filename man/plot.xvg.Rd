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
\method{plot}{xvg}(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a .XVG output file from GROMACS.}
  \item{...}{ignored}
  }
\details{
XVG is the default format file from GROMACS molecular dynamics package, contains data formatted for import into the Grace 2-D plotting program.
}

\references{
Pronk, S., Pall, S., Schulz, R., Larsson, P., Bjelkmar, P., Apostolov, R., ... & Lindahl, E. (2013). GROMACS 4.5: a high-throughput and highly parallel open source molecular simulation toolkit. Bioinformatics, 29 (7), 845-854.
}

\examples{
# PLOT ONE FILE
file <- system.file("xvg-files/epot.xvg",package="Peptides")
plot.xvg(file)

# PLOTTING MULTIPLE FILES
POPG <- system.file("xvg-files/POPG.xvg",package="Peptides")
POPE <- system.file("xvg-files/POPE.xvg",package="Peptides")
POPC <- system.file("xvg-files/POPC.xvg",package="Peptides")
par(mfcol=c(1,3))
plot.xvg(POPG)
plot.xvg(POPE)
plot.xvg(POPC)
}