# COMPARED TO ExPASy PeptideMass tool
# https://web.expasy.org/peptide_mass/
# SEQUENCE: EGVNDNECEGFFSARK 
# no label, charge 2: 929.9048
# no label, charge 3: 620.2723
# no label, charge 2, Carboxymethyl: 930.3968

# CHECK MZ VALUE - CHARGE 2
test_that("mz function: the computed value is wrong",{
  expect_equal(object = mz(seq = "EGVNDNECEGFFSARK"), expected = 929.90, tolerance= 0.01)
})

# CHECK MZ VALUE - CHARGE 3
test_that("mz function: the computed value is wrong",{
  expect_equal(object = mz(seq = "EGVNDNECEGFFSARK", charge = 3), expected = 620.27, tolerance= 0.01)
})

# CHECK MZ VALUE - CHARGE 2, CARBOCYMETHYL
test_that("mz function: the computed value is wrong",{
  expect_equal(object = mz(seq = "EGVNDNECEGFFSARK", cysteins = 58.005479), expected = 930.40, tolerance= 0.01)
})

# CHECK OUTPUT CLASS
test_that("mz function: the output class is wrong",{
  expect_true(object = is.numeric(mz(seq = "EGVNDNECEGFFSARK")))
})