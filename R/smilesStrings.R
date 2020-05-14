
#' Create Smiles String from aminoacid sequences
#'
#' This function converts peptides with aminoacid one-letter abbreviations into
#' smiles strings to represent the structure.
#'
#' The output can be stored in a .smi file and converted using openbabel to
#' drawings of the peptides.
#'
#' @param seq character vector with one-letter aminoacid codes
#'
#' @return character vector with smiles strings
#' @export
#'
#' @examples
#' aaSMILES("AA")
#' # [1] "N[C@@]([H])(C)C(=O)N[C@@]([H])(C)C(=O)O"
#' aaSMILES(c("AA", "GG"))
#' # [1] "N[C@@]([H])(C)C(=O)N[C@@]([H])(C)C(=O)O" "NCC(=O)NCC(=O)O"
aaSMILES <- function(seq) {
  aminoacid_smiles <- c(
    "A" = "N[C@@]([H])(C)C(=O)O",
    "R" = "N[C@@]([H])(CCCNC(=N)N)C(=O)O",
    "N" = "N[C@@]([H])(CC(=O)N)C(=O)O",
    "D" = "N[C@@]([H])(CC(=O)O)C(=O)O",
    "C" = "N[C@@]([H])(CS)C(=O)O",
    "Q" = "N[C@@]([H])(CCC(=O)N)C(=O)O",
    "E" = "N[C@@]([H])(CCC(=O)O)C(=O)O",
    "G" = "NCC(=O)O",
    "H" = "N[C@@]([H])(CC1=CN=C-N1)C(=O)O",
    "I" = "N[C@@]([H])([C@]([H])(CC)C)C(=O)O",
    "L" = "N[C@@]([H])(CC(C)C)C(=O)O",
    "K" = "N[C@@]([H])(CCCCN)C(=O)O",
    "M" = "N[C@@]([H])(CCSC)C(=O)O",
    "F" = "N[C@@]([H])(Cc1ccccc1)C(=O)O",
    "P" = "N1[C@@]([H])(CCC1)C(=O)O",
    "S" = "N[C@@]([H])(CO)C(=O)O",
    "T" = "N[C@@]([H])([C@]([H])(O)C)C(=O)O",
    "W" = "N[C@@]([H])(CC(=CN2)C1=C2C=CC=C1)C(=O)O",
    "Y" = "N[C@@]([H])(Cc1ccc(O)cc1)C(=O)O",
    "V" = "N[C@@]([H])(C(C)C)C(=O)O")

  split_sequences <- strsplit(toupper(seq), "")

  smiles_aa_sequences <- lapply(split_sequences, function(x) aminoacid_smiles[x])

  # This trims the last O in the -OH in the carbonyl in each aminoacid
  concat_aa_smiles <- lapply(
      smiles_aa_sequences,
      function(x) paste(gsub("O$", "", x), collapse = ""))

  concat_aa_smiles <- lapply(concat_aa_smiles, function(x) paste0(x, "O"))
  concat_aa_smiles <- unlist(concat_aa_smiles)

  return(concat_aa_smiles)

}



