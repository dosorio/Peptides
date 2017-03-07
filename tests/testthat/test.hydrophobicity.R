# COMPARED TO GRAVY Grand average of hydropathicity (GRAVY) ExPASy
# http://web.expasy.org/cgi-bin/protparam/protparam
# SEQUENCE: QWGRRCCGWGPGRRYCVRWC
# GRAVY: -0.950

# CHECK GRAVY VALUE
test_that("hidrophobicity function: the computed value is wrong",{
  expect_equal(hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Kyte"),-0.950)
})

# CHECK OUTPUT CLASS
test_that("hidrophobicity function: the computed value is wrong",{
  expect_true(is.numeric(hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC", scale = "Kyte" )))
})
