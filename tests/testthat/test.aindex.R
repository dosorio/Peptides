# COMPARED TO ExPASy ALIPHATIC INDEX
# http://web.expasy.org/protparam/

# SEQUENCE: DAYAQWLKDGGPSSGRPPPS
# Aliphatic index: 29.50

# CHECK VALUES
test_that("aindex function: output value is wrong",{
  expect_equal(aIndex(seq = "DAYAQWLKDGGPSSGRPPPS"),29.50)
})

# # CHECK OUTPUT CLASS
test_that("aindex function: output class is wrong",{
  expect_true(is.numeric(aIndex(seq = "DAYAQWLKDGGPSSGRPPPS")))
})
