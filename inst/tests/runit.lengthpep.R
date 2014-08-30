test.lengthpep <- function(){
  # COMPARED TO ExPASy ProtParam
  # http://web.expasy.org/protparam
  # SEQUENCE: QWGRRCCGWGPGRRYCVRWC
  # Number of amino acids: 20
  
  # CHECK VALUE
  checkEquals(lengthpep("QWGRRCCGWGPGRRYCVRWC"),20)
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(lengthpep("QWGRRCCGWGPGRRYCVRWC")))
}