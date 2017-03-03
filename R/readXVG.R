#' @export readXVG
#' @title Read output data from a XVG format file.
#' 
#' @param file A .XVG output file of the GROMACS molecular dynamics package
#' 
#' @description XVG is the default format file of the GROMACS molecular dynamics package, contains data formatted to be imported into the Grace 2-D plotting program.
#' @references  Pronk, S., Pall, S., Schulz, R., Larsson, P., Bjelkmar, P., Apostolov, R., ... & Lindahl, E. (2013). GROMACS 4.5: a high-throughput and highly parallel open source molecular simulation toolkit. Bioinformatics, 29 (7), 845-854.
#' @author Latest: J. Sebastian Paez <jpaezpae@purdue.edu>
#' 
#' Original: Daniel Osorio <dcosorioh@unal.edu.co>
#' @details GROMACS (GROningen MAchine for Chemical Simulations) is a molecular dynamics package designed for simulations of proteins, lipids and nucleic acids. It is free, open source software released under the GNU General Public License. 
#' The file format used by GROMACS is XVG. This format can be displayed in graphical form through the GRACE program on UNIX/LINUX systems and the GNUPlot program on Windows. XVG files are plain text files containing tabular data separated by tabulators and two types of comments which contain data labels. Although manual editing is possible, this is not a viable option when working with multiple files of this type. 
#' For ease of reading, information management and data plotting, the functions \code{read.xvg} and \code{plot.xvg} were incorporated.
#' @examples # READING FILE
#' XVGfile <- system.file("xvg-files/epot.xvg",package="Peptides")
#' readXVG(XVGfile)
#' 
#' #    Time (ps)  Potential
#' #  1         1 6672471040
#' #  2         2 6516461568
#' #  3         3 6351947264
#' #  4         4 6183133184
#' #  5         5 6015310336
#' #  6         6 5854271488

readXVG <- function(file) {
  ## Helper functions
  # Remove quotes, starting and ending whitespaces
  unquote <- function(x, ...) { gsub("\\\"|^\\s|\\s$", "", x, ...) }
  
  # Subsets a list for elments that match a regex and then removes that regex
  perlgsub <- function(pattern, x, replacement = "", ...) {
    gsub(pattern = pattern,
         replacement = replacement, 
         x = grep(pattern = pattern, x, value = TRUE, perl = TRUE, ... ),
         perl = TRUE, ...)
  }
  
  # Read flat file
  content <- readLines(file)

  # Read colnames and title
  header <- grep('^[@#]', content, value = TRUE)
  variables <- unquote(perlgsub("^@ s[0-9]+ legend ", header))
  x_axis_label <- unquote(perlgsub("^@ \\s+xaxis\\s+label ", header))
  x_axis_label <- perlgsub("(?!=\\w+)\\W+\\(\\w*\\)$", x_axis_label)
  xvg_labels <- perlgsub("^@ \\s+[a-z]axis\\s+label ", header)
  xvg_labels <- unquote(unlist(strsplit(xvg_labels, ',')))
  title <- unquote(perlgsub("^@ \\s+title ", header))

  # Extracting the data
  content <- perlgsub('^\\s+', content)
  content <- as.data.frame(
    t(sapply(
      content, 
      (function(x) {unlist(strsplit(x, "\\s+"))}), 
      USE.NAMES = FALSE)
      ), stringsAsFactors = FALSE)

  # Asign colnames
  colnames(content) <- c(x_axis_label, variables)

  # Add units and title as attribute
  attr(content, 'xvg_labels') <- xvg_labels
  attr(content, 'title') <- title

  # Return a matrix
  return(content)
}
