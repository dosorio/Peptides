#' @export plotXVG
#' @importFrom graphics par title
#' @title Plot time series from GROMACS XVG files
#'
#' @param XVGfile A .XVG output file of the GROMACS molecular dynamics package
#' @param ... Arguments to be passed to methods, such as graphical parameters.
#'
#' @description Read and plot output data from a XVG format file.
#' @references  Pronk, S., Pall, S., Schulz, R., Larsson, P., Bjelkmar, P., Apostolov, R., ... & Lindahl, E. (2013). GROMACS 4.5: a high-throughput and highly parallel open source molecular simulation toolkit. Bioinformatics, 29 (7), 845-854.
#' @details GROMACS (GROningen MAchine for Chemical Simulations) is a molecular dynamics package designed for simulations of proteins, lipids and nucleic acids. It is free, open source software released under the GNU General Public License. 
#' The file format used by GROMACS is XVG. This format can be displayed in graphical form through the GRACE program on UNIX/LINUX systems and the GNUPlot program on Windows. XVG files are plain text files containing tabular data separated by tabulators and two types of comments which contain data labels. Although manual editing is possible, this is not a viable option when working with multiple files of this type. 
#' For ease of reading, information management and data plotting, the functions \code{read.xvg} and \code{plot.xvg} were incorporated.
#' @author Latest: J. Sebastian Paez <jpaezpae@purdue.edu>
#' 
#' Original: Daniel Osorio <dcosorioh@unal.edu.co>
#' @examples XVGfile <- system.file("xvg-files/epot.xvg",package="Peptides")
#' plotXVG(XVGfile)

plotXVG <- function(XVGfile, ...) {
  # Read flat file
  content <- readXVG(XVGfile)
  xlabel <- colnames(content)[[1]]
  
  try({
    # overwrites the x axis name if it exists
    xlabel <- attr(content, 'xvg_labels')[1]
    })
  
  # Get graphical parameters to revert to them later
  original_par <- par(no.readonly = TRUE)
  
  # Plot plot maximum 4 facets per row
  graphics::par(mfcol = c((ncol(content) - 1.5) %/% 4 + 1,
                          min((ncol(content) - 1), 4)), 
                oma = c(0, 0, 2.5, 0))
  for (i in seq_len(ncol(content) - 1)) {
    
    graphics::plot(
      x = content[, 1],
      y = content[, i + 1],
      type = "l",
      ylab = colnames(content)[[i + 1]],
      xlab = xlabel,
      ...
    )
  }
  title(attr(content, 'title'), outer = TRUE)

  # Revert to the previous graphical parameters
  par(original_par)
}
