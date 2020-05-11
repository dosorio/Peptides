test_that("all amino acids are uppercase letters", {
  amino_acids <- aaList()
  expect_true(all(amino_acids %in% LETTERS))
})

test_that("Combining all amino acids is a valid peptide", {
  polypeptide <- paste0(aaList(), collapse = "")
  expect_silent(aaCheck(polypeptide))
})

