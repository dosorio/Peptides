#' @export mz
#' @title Calculate the m/z for peptides.
#' @description This function calculates the (monoisotopic) mass over charge ratio (m/z) for peptides, as measured in mass spectrometry.
#' @param seq An amino-acids sequence, in one letter code.
#' @param label Set a predefined heavy isotope label. Accepts "none", "silac_13c", "silac_13c15n" and "15n". Overwrites input in \code{shift}.
#' @param aaShift Define the mass difference in Dalton of given amino acids as a named vector. Use the amino acid one letter code as names and the mass shift in Dalton as values. 
#' @param cysteins Define the mass shift in Dalton of blocked cysteins. Defaults to 57.021464, for cysteins blocked by iodoacetamide.
#' @examples 
#' mz("EGVNDNECEGFFSAR")
#' mz("EGVNDNECEGFFSAR", aaShift = c(K = 6.020129, R = 6.020129))
#' mz("EGVNDNECEGFFSAR", label = "silac_13c", cysteins = 58.005479)
#'
mz <-
  function(seq, charge=2, label="none", aaShift = NULL, cysteins = 57.021464){
    
    # Check for correct input
    if(!is.numeric(charge) | length(charge) != 1){
      stop("Charge must be given as an integer (typically between 1-4).")
    }
    
    # Calculate mass of uncharged peptide
    mass <- mw(seq=seq, label=label, aaShift=aaShift, monoisotopic = TRUE)
    
    # Add modification at cysteins
    mass <- mass + stri_count(seq, fixed = "C") * cysteins
    
    # Modify for charged peptides.
    if (charge >= 0){
      mass <- mass + charge * 1.007276 # Add weight of H+ ions.
      mass <- mass / charge # Divide by charge state.
    }
    
    return(mass)
  }