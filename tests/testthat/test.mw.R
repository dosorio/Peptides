# COMPARED TO ExPASy Compute pI/Mw tool
# http://web.expasy.org/compute_pi/
# SEQUENCE: QWGRRCCGWGPGRRYCVRWC 
# AVERAGE: 2485.91 - MONOISOTOPIC: 2484.12

# CHECK MW VALUE - AVERAGE
test_that("mw function: the computed value is wrong",{
  expect_equal(object = mw(seq = "QWGRRCCGWGPGRRYCVRWC",monoisotopic = FALSE), expected = 2485.91, tolerance= 0.01)
})

# CHECK MW VALUE - MONOISOTOPIC
test_that("mw function: the computed value is wrong",{
  expect_equal(object = mw(seq = "QWGRRCCGWGPGRRYCVRWC",monoisotopic = TRUE), expected = 2484.12, tolerance= 0.01)
})

# CHECK OUTPUT CLASS
test_that("mw function: the output class is wrong",{
  expect_true(object = is.numeric(mw(seq = "QWGRRCCGWGPGRRYCVRWC")))
})
