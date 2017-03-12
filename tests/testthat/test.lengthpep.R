# COMPARED TO ExPASy ProtParam
# http://web.expasy.org/protparam
# SEQUENCE: QWGRRCCGWGPGRRYCVRWC
# Number of amino acids: 20

# CHECK VALUE
test_that("lengthpep function: the computed value is wrong",{
  expect_equal(lengthpep(seq = "QWGRRCCGWGPGRRYCVRWC"),20)
})

# CHECK OUTPUT CLASS
test_that("lengthpep function: the output class is wrong",{
  expect_true(is.numeric(lengthpep(seq = "QWGRRCCGWGPGRRYCVRWC")))
})
