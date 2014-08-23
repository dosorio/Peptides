require(Peptides)
require(RUnit)

#options(warn=1)

testSuite <- defineTestSuite(name="RUnit",
                             dirs=".",
                             testFileRegexp="runit.*\\.R$",
                             rngKind="default",
                             rngNormalKind="default")

testData <- runTestSuite(testSuite, verbose=0L)
printTextProtocol(testData, showDetails=FALSE)

