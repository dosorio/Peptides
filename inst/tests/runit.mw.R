mw.membpos <- function(){
  # COMPARED TO ExPASy Compute pI/Mw tool
  # http://web.expasy.org/compute_pi/
  # SEQUENCE: QWGRRCCGWGPGRRYCVRWC 
  
  # CHECK MW VALUE
  checkEquals(mw("QWGRRCCGWGPGRRYCVRWC"), 2485.9)
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(mw("QWGRRCCGWGPGRRYCVRWC")))
}