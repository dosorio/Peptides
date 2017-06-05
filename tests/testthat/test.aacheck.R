# NON STANDARD AMINO ACIDS PRESENT

test_that("Non standard aminoacids present in sequence",{expect_warning(
  aaCheck("KLRSTZMZ")
)})
