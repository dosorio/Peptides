# COMPARED TO EMBOSS:HMOMENT
# http://emboss.bioinformatics.nl/cgi-bin/emboss/hmoment
# SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
# ALPHA-HELIX 100º : 0.56
# BETA-SHEET  160º : 0.25

# ALPHA HELIX VALUE
test_that("hmoment function: output value is wrong",{
  expect_equal(hmoment(seq = "FLPVLAGLTPSIVPKLVCLLTKKC",angle = 100,window = 11), 0.520,tolerance = 0.01)
})

# BETA SHEET VALUE
test_that("hmoment function: output value is wrong",{
  expect_equal(hmoment(seq = "FLPVLAGLTPSIVPKLVCLLTKKC",angle = 160,window = 11), 0.271,tolerance = 0.01)
})
  

# CHECK OUTPUT CLASS
test_that("hmoment function: output class is wrong",{
  expect_true(is.numeric(hmoment(seq = "FLPVLAGLTPSIVPKLVCLLTKKC",angle = 100)))
})