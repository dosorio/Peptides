#' @export plot.xvg
#' @rawNamespace S3method(plot,xvg)
#' @title Plot time series from GROMACS XVG files
#' @param x A .XVG output file of the GROMACS molecular dynamics package
#' @param ... Arguments to be passed to methods, such as graphical parameters.
#' @description Read and plot output data from a XVG format file.
#' @references  Pronk, S., Pall, S., Schulz, R., Larsson, P., Bjelkmar, P., Apostolov, R., ... & Lindahl, E. (2013). GROMACS 4.5: a high-throughput and highly parallel open source molecular simulation toolkit. Bioinformatics, 29 (7), 845-854.
#' @details GROMACS (GROningen MAchine for Chemical Simulations) is a molecular dynamics package designed for simulations of proteins, lipids and nucleic acids. It is free, open source software released under the GNU General Public License. 
#' The file format used by GROMACS is XVG. This format can be displayed in graphical form through the GRACE program on UNIX/LINUX systems and the GNUPlot program on Windows. XVG files are plain text files containing tabular data separated by tabulators and two types of comments which contain data labels. Although manual editing is possible, this is not a viable option when working with multiple files of this type. 
#' For ease of reading, information management and data plotting, the functions \code{read.xvg} and \code{plot.xvg} were incorporated.
#' @author Daniel Osorio <daniel.osorio@correo.uis.edu.co>
#' @examples file <- system.file("xvg-files/epot.xvg",package="Peptides")
#' plot.xvg(file)

plot.xvg <- function(x, ...) {
  # Read flat file
  content <- readLines(x)
  # Read colnames
  headers <-
    gsub("^@ s[[:digit:]]+ legend ", "", content[grep(pattern = "^@ s[[:digit:]]+", content)])
  headers <- gsub("\\\"", "", headers)
  # Read axis and title
  title <-
    gsub("[[:punct:]]", "", gsub("@    title ", "", content[grep("^@    title", content)]))
  xlabel <-
    gsub("@[[:space:]]+xaxis[[:space:]]+label[[:space:]]+",
         "",
         content[grep("^@    xaxis", content)])
  xlabel <- gsub("\"", "", xlabel)
  ylabel <-
    gsub("@[[:space:]]+yaxis[[:space:]]+label[[:space:]]+",
         "",
         content[grep("^@    yaxis", content)])
  ylabel <- gsub("\"", "", ylabel)
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
  # Plot
  graphics::par(mfcol = c(1, (dim(content)[2] - 1)), oma = c(0, 0, 2.5, 0))
  for (i in seq_len((dim(content)[2] - 1))) {
    graphics::plot(
      x = content[, 1],
      y = content[, i + 1],
      type = "l",
      ylab = headers[i],
      xlab = xlabel,
      ...
    )
  }
  title(title, outer = TRUE)
}