# COMPARED TO ExPASy INSTAINDEX
# http://web.expasy.org/protparam/
# SEQUENCE: QWGRRCCGWGPGRRYCVRWC
# The instability index (II) is computed to be 83.68


# CHECK INSTAINDEX VALUE
test_that("instaindex function: the computed value is wrong",{
  expect_equal(instaIndex(seq = "QWGRRCCGWGPGRRYCVRWC"), 83.68)
})

# CHECK OUTPUT CLASS
test_that("instaindex function: the output class is wrong",{
  expect_true(is.numeric(instaIndex(seq = "QWGRRCCGWGPGRRYCVRWC")))
})