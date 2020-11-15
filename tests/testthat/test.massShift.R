# PARTLY COMPARED TO ExPASy PeptideMass tool
# https://web.expasy.org/peptide_mass/
# SEQUENCE: AGEPKLDAGV
# Uniprot accession to enter in PeptideMass tool: P22103

# CHECK SHIFT VALUE - MANUAL
test_that("massShift function: the computed value is wrong",{
  expect_equal(object = massShift(seq = "AGEPKLDAGV", aaShift = c(V=-0.984)), expected = -0.984)
})

# CHECK SHIFT VALUE - PREDEFINED LABELS - MONOISOTOPIC
test_that("massShift function: the computed value is wrong",{
  expect_equal(object = massShift(seq = "AGEPKLDAGVR", label = "silac_13c"), expected = 12.04026, tolerance = 0.001)
})
test_that("massShift function: the computed value is wrong",{
  expect_equal(object = massShift(seq = "AGEPKLDAGVR", label = "silac_13c15n"), expected = 18.02247, tolerance = 0.001)
})
test_that("massShift function: the computed value is wrong",{
  expect_equal(object = massShift(seq = "AGEPKLDAGVR", label = "15n"), expected = 14.95552, tolerance = 0.001)
})

# CHECK SHIFT VALUE - PREDEFINED LABELS - AVERAGE
test_that("massShift function: the computed value is wrong",{
  expect_equal(object = massShift(seq = "AGEPKLDAGVR", label = "silac_13c", monoisotopic = F), expected = 11.9118, tolerance = 0.001)
})
test_that("massShift function: the computed value is wrong",{
  expect_equal(object = massShift(seq = "AGEPKLDAGVR", label = "silac_13c15n", monoisotopic = F), expected = 17.8723, tolerance = 0.001)
})
test_that("massShift function: the computed value is wrong",{
  expect_equal(object = massShift(seq = "AGEPKLDAGVR", label = "15n", monoisotopic = F), expected = 14.91554, tolerance = 0.001)
})

# CHECK OUTPUT CLASS
test_that("massShift function: the output class is wrong",{
  expect_true(object = is.numeric(massShift(seq = "AGEPKLDAGVR")))
})