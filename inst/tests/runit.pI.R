test.pI<- function(){
  # COMPARED TO ExPASy ProtParam
  # http://web.expasy.org/cgi-bin/protparam/protparam
  # SEQUENCE: QWGRRCCGWGPGRRYCVRWC
  # Theoretical pI: 9.88
  
  # CHECK pI VALUE
  checkEquals(round(pI("QWGRRCCGWGPGRRYCVRWC","Bje"),2),9.88)
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(pI("QWGRRCCGWGPGRRYCVRWC","Bje")))
}