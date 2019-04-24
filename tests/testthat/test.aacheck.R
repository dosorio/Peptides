# NON STANDARD AMINO ACIDS PRESENT
context("Check if amino acids are valid")

test_that("Non standard aminoacids present in sequence",{expect_warning(
  aaCheck("KLRSTZMZ")
)})

test_that("Warning produced when non-standard amino acids present in any sequence except the first",{expect_warning(
  aaCheck(c("KLR", "KLRSTZMZ"))
)})