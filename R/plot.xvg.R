# plot.xvg
# This function plot the XVG output file from GROMACS molecular dynamics package

plot.xvg <- function(file, ...) {
  # Read flat file
  content <- readLines(file)
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
  par(mfcol = c(1, (dim(content)[2] - 1)), oma = c(0, 0, 2.5, 0))
  for (i in seq_len((dim(content)[2] - 1))) {
    plot(
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