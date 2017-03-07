# COMPARED TO ExPASy ProtParam
# http://web.expasy.org/cgi-bin/protparam/protparam
# SEQUENCE: QWGRRCCGWGPGRRYCVRWC
# Theoretical pI: 9.88

# CHECK pI VALUE
test_that("pI function: the computed value is wrong",{
  expect_equal(object = pI(seq = "QWGRRCCGWGPGRRYCVRWC",pKscale = "Bjellqvist"),expected = 9.88, tolerance = 0.01)
})

# CHECK OUTPUT CLASS
test_that("pI function: the output class is wrong",{
  expect_true(object = is.numeric(pI(seq = "QWGRRCCGWGPGRRYCVRWC",pKscale = "Bjellqvist")))
})
