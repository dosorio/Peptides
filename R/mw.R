#' @export mw
#' @title Compute the molecular weight of a protein sequence
#' @description This function calculates the molecular weight of a protein sequence. It is calculated as the sum of the mass of each amino acid using the scale available on Compute pI/Mw tool.
#' @param seq An amino-acids sequence
#' @param monoisotopic A logical value \code{'TRUE'} or \code{'FALSE'} indicating if monoisotopic weights of amino-acids should be used
#' @source The formula and amino acid scale are the same available on ExPASy Compute pI/Mw tool: http://web.expasy.org/compute_pi/
#' @references Gasteiger, E., Hoogland, C., Gattiker, A., Wilkins, M. R., Appel, R. D., & Bairoch, A. (2005). Protein identification and analysis tools on the ExPASy server. In The proteomics protocols handbook (pp. 571-607). Humana Press. Chicago
#' @details The molecular weight is the sum of the masses of each atom constituting a molecule. The molecular weight is directly related to the length of the amino acid sequence and is expressed in units called daltons (Da). In Peptides the function mw computes the molecular weight using the same formulas and weights as ExPASy's "compute pI/mw" tool (Gasteiger et al., 2005).
#' @examples # COMPARED TO ExPASy Compute pI/Mw tool
#' # http://web.expasy.org/compute_pi/
#' # SEQUENCE: QWGRRCCGWGPGRRYCVRWC 
#' # Theoretical pI/Mw: 9.88 / 2485.91 
#' 
#' mw("QWGRRCCGWGPGRRYCVRWC")
#' # [1] 2485.911
mw <- function(seq, monoisotopic = FALSE) {
  seq <- gsub("[[:space:]]", "", seq)
  # Create the weight scale
  if (monoisotopic == TRUE) {
    weight <-
      c(
        A = 71.03711,
        R = 156.10111,
        N = 114.04293,
        D = 115.02694,
        C = 103.00919,
        E = 129.04259,
        Q = 128.05858,
        G = 57.02146,
        H = 137.05891,
        I = 113.08406,
        L = 113.08406,
        K = 128.09496,
        M = 131.04049,
        F = 147.06841,
        P = 97.05276,
        S = 87.03203,
        T = 101.04768,
        W = 186.07931,
        Y = 163.06333,
        V = 99.06841,
        U = 150.95363,
        O = 237.14772,
        H2O = 18.01056
      )
  } else {
    weight <-
      c(
        A = 71.0788,
        R = 156.1875,
        N = 114.1038,
        D = 115.0886,
        C = 103.1388,
        E = 129.1155,
        Q = 128.1307,
        G = 57.0519,
        H = 137.1411,
        I = 113.1594,
        L = 113.1594,
        K = 128.1741,
        M = 131.1926,
        F = 147.1766,
        P = 97.1167,
        S = 87.0782,
        T = 101.1051,
        W = 186.2132,
        Y = 163.1760,
        V = 99.1326,
        U = 150.0388,
        O = 237.3018,
        H2O = 18.01524
      )
  }
  
  # Sum the weight of each amino acid and add H2O weight
  unlist(lapply(seq, function(seq) {
    sum(weight[c(strsplit(toupper(seq), split = "")[[1]], "H2O")], na.rm =
          TRUE)
  }))
}
