test_that("Correct smiles string is output from aminoacid strings", {
  expected_aa_out <- "N[C@@]([H])(C)C(=O)N[C@@]([H])(C)C(=O)O"
  expect_equal(expected_aa_out, aaSMILES("AA"))

  expected_MYPEPTIDE_out <- "N[C@@]([H])(CCSC)C(=O)N[C@@]([H])(Cc1ccc(O)cc1)C(=O)N1[C@@]([H])(CCC1)C(=O)N[C@@]([H])(CCC(=O)O)C(=O)N1[C@@]([H])(CCC1)C(=O)N[C@@]([H])([C@]([H])(O)C)C(=O)N[C@@]([H])([C@]([H])(CC)C)C(=O)N[C@@]([H])(CC(=O)O)C(=O)N[C@@]([H])(CCC(=O)O)C(=O)O"
  expect_equal(expected_MYPEPTIDE_out, aaSMILES("MYPEPTIDE"))

  expected_GG_out <- "NCC(=O)NCC(=O)O"
  expect_equal(expected_GG_out, aaSMILES("GG"))

  expected_GGPGH_out <- "NCC(=O)NCC(=O)N1[C@@]([H])(CCC1)C(=O)NCC(=O)N[C@@]([H])(CC1=CN=C-N1)C(=O)O"
  expect_equal(expected_GGPGH_out, aaSMILES("GGPGH"))
})


test_that("Smiles conversion is handled correclt when multiple outputs are given",{
    expect_length(aaSMILES(c("AA", "GG")), 2)
    expect_length(aaSMILES(c("AA", "gg")), 2)
})

test_that("Smiles conversion handles low caps", {
    expect_equal(aaSMILES(c("AA", "GG")), aaSMILES(c("aa", "gg")))

})

test_that("Smiles conversion handles all natural aminoacids", {
    aminoacids <- c("A", "C", "D", "E", "F",
    "G", "H", "I", "K", "L",
    "M", "N", "P", "Q", "R",
    "S", "T", "V", "W", "Y")
    for (i in c(aminoacids)) {
        expect_type(i, "character")
    }
})

