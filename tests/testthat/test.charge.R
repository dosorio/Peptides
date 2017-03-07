# COMPARED TO EMBOSS PEPSTATS
# http://emboss.bioinformatics.nl/cgi-bin/emboss/pepstats
# SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
# Charge   = 3.0
test_that("charge function: output value is wrong", {
  expect_equal(
    object = charge(
      seq = "FLPVLAGLTPSIVPKLVCLLTKKC",
      pH = 7,
      pKscale = "EMBOSS"
    ),
    expected = 3.0,
    tolerance = 0.1
  )
})

# COMPARED TO YADAMP
# http://yadamp.unisa.it/showItem.aspx?yadampid=845&x=0,7055475
# SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
test_that("charge function: output value is wrong", {
  expect_equal(
    object = charge(
      seq = "FLPVLAGLTPSIVPKLVCLLTKKC",
      pH = 5,
      pKscale = "Lehninger"
    ),
    expected = 3.0,
    tolerance = 0.1
  )
})
test_that("charge function: output value is wrong", {
  expect_equal(
    object = charge(
      seq = "FLPVLAGLTPSIVPKLVCLLTKKC",
      pH = 7,
      pKscale = "Lehninger"
    ),
    expected = 2.9,
    tolerance = 0.1
  )
})
test_that("charge function: output value is wrong", {
  expect_equal(
    object = charge(
      seq = "FLPVLAGLTPSIVPKLVCLLTKKC",
      pH = 9,
      pKscale = "Lehninger"
    ),
    expected = 1.0,
    tolerance = 0.1
  )
})

# CHECK OUTPUT CLASS
test_that("charge function: output class is wrong",{
  expect_true(object = is.numeric(charge(seq = "FLPVLAGLTPSIVPKLVCLLTKKC",pH = 7,pKscale = "Bjellqvist")))
})