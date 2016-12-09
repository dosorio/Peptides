test.pI<- function(){
  # COMPARED TO ExPASy ProtParam
  # http://web.expasy.org/cgi-bin/protparam/protparam
  # SEQUENCE: QWGRRCCGWGPGRRYCVRWC
  # Theoretical pI: 9.88
  
  # CHECK pI VALUE
  checkEquals(pI(seq = "QWGRRCCGWGPGRRYCVRWC",pKscale = "Bjellqvist"),9.88,tolerance = 0.01)
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(pI("QWGRRCCGWGPGRRYCVRWC","Bjellqvist")))
}