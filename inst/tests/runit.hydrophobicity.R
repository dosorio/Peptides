test.hydrophobicity <- function(){
  # COMPARED TO GRAVY Grand average of hydropathicity (GRAVY) ExPASy
  # http://web.expasy.org/cgi-bin/protparam/protparam
  # SEQUENCE: QWGRRCCGWGPGRRYCVRWC
  # GRAVY: -0.950
  
  # CHECK GRAVY VALUE
  checkEquals(hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Kyte"),-0.950)
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(hydrophobicity("QWGRRCCGWGPGRRYCVRWC","Kyte")))
}