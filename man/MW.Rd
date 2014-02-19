\name{MW}
\alias{MW}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{To calculate the molecular weight of AA sequence
%%  ~~function to do ... ~~
}
\description{
Molecular mass or molecular weight refers to the mass of a molecule. It is calculated as the sum of the mass of each constituent atom multiplied by the number of atoms of that element in the molecular formula.
}
\usage{
MW(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case
%%     ~~Describe \code{x} here~~
}
}
\examples{
MW("KLKLLLLLKLK")
MW("FLPLLLPLFLP")
}