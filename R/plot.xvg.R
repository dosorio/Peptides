#' @exportMethod plot.xvg
#' @export plot.xvg
#' @title Plot time series from GROMACS XVG files
#' @param x A .XVG output file of the GROMACS molecular dynamics package
#' @description Read and plot output data from a XVG format file.
#' @references  Pronk, S., Pall, S., Schulz, R., Larsson, P., Bjelkmar, P., Apostolov, R., ... & Lindahl, E. (2013). GROMACS 4.5: a high-throughput and highly parallel open source molecular simulation toolkit. Bioinformatics, 29 (7), 845-854.
#' @author Daniel Osorio <daniel.osorio@correo.uis.edu.co>
#' @examples file <- system.file("xvg-files/epot.xvg",package="Peptides")
#' plot.xvg(file)

plot.xvg <- function(x, ...) {
  # Read flat file
  content <- readLines(x)
  # Read colnames
  headers <-
    gsub("^@ s[[:digit:]] legend ", "", content[grep(pattern = "^@ s[[:digit:]]", content)])
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