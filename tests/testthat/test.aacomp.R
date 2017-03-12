# CHECK OUTPUT CLASS
test_that("aacomp function: output value should be a matrix",{
  expect_true(is.matrix(aaComp("QWGRRCCGWGPGRRYCVRWC")[[1]]))
})


# COMPARED TO PEPSTATS
# http://emboss.bioinformatics.nl/cgi-bin/emboss/pepstats
# Property  Residues		          Number	Mole%
# Tiny		  (A+C+G+S+T)		          8		  40.000
# Small		  (A+B+C+D+G+N+P+S+T+V)	  10		50.000
# Aliphatic	(A+I+L+V)		            1		  5.000
# Aromatic	(F+H+W+Y)		            4		  20.000
# Non-polar	(A+C+F+G+I+L+M+P+V+W+Y)	14		70.000
# Polar		  (D+E+H+K+N+Q+R+S+T+Z)	  6		  30.000
# Charged		(B+D+E+H+K+R+Z)		      5		  25.000
# Basic		  (H+K+R)			            5		  25.000
# Acidic		(B+D+E+Z)		            0		  0.000

# CHECK VALUES
test_that("aacomp function: absolute frequencies are wrong",{
  expect_equal(aaComp("QWGRRCCGWGPGRRYCVRWC")[[1]][1:9],c(8,10,1,4,14,6,5,5,0))
})

#CHECK PERCENTAGES
test_that("aacomp function: relative frequencies are wrong",{
  expect_equal(aaComp("QWGRRCCGWGPGRRYCVRWC")[[1]][10:18],c(40,50,5,20,70,30,25,25,0))
})

