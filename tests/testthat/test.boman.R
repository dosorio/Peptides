# COMPARED TO YADAMP DATABASE
# http://yadamp.unisa.it/showItem.aspx?yadampid=845&x=0,4373912
# SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
# BOMAN INDEX  -1.24  

# CHECK VALUES
test_that("boman function: output value is wrong",{
  expect_equal(boman(seq = "FLPVLAGLTPSIVPKLVCLLTKKC"),-1.24, tolerance=0.01)
})

# CHECK OUTPUT CLASS
test_that("boman function: output class is wrong",{
  expect_true(is.numeric(boman(seq = "FLPVLAGLTPSIVPKLVCLLTKKC")))
})