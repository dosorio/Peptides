#' @export read.xvg
#' @title Read output data from a XVG format file.
#' @param file A .XVG output file of the GROMACS molecular dynamics package
#' @description XVG is the default format file of the GROMACS molecular dynamics package, contains data formatted to be imported into the Grace 2-D plotting program.
#' @references  Pronk, S., Pall, S., Schulz, R., Larsson, P., Bjelkmar, P., Apostolov, R., ... & Lindahl, E. (2013). GROMACS 4.5: a high-throughput and highly parallel open source molecular simulation toolkit. Bioinformatics, 29 (7), 845-854.
#' @author Daniel Osorio <daniel.osorio@correo.uis.edu.co>
#' @examples # READING FILE
#' file <- system.file("xvg-files/epot.xvg",package="Peptides")
#' read.xvg(file)
#' 
#' #    Time (ps)  Potential
#' #  1         1 6672471040
#' #  2         2 6516461568
#' #  3         3 6351947264
#' #  4         4 6183133184
#' #  5         5 6015310336
#' #  6         6 5854271488

read.xvg <- function(file) {
  # Read flat file
  content <- readLines(file)
  # Read colnames
  headers <-
    gsub(pattern = "^@ s[[:digit:]] legend ",
         replacement =  "",
         x = content[grep(pattern = "^@ s[[:digit:]]", x = content)])
  headers <- gsub("\\\"", "", headers)
  # Extracting the data
  content <- sub("#", replacement = "@", content)
  content <- content[!grepl("@", content)]
  content <- gsub("^[[:space:]]+", "", content)
  content <- strsplit(content, "[[:space:]]+")
  content <-
    matrix(
      data = as.numeric(unlist(content)),
      ncol = length(headers) + 1,
      byrow = TRUE
    )
  # Asign colnames
  colnames(content) <- c("Time", headers)
  # Return a matrix
  return(content)
}
