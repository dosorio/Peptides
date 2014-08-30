test.instaindex <- function(){
  # COMPARED TO ExPASy INSTAINDEX
  # http://web.expasy.org/protparam/
  # SEQUENCE: QWGRRCCGWGPGRRYCVRWC
  # The instability index (II) is computed to be 83.68
  
  
  # CHECK INSTAINDEX VALUE
  checkEquals(instaindex("QWGRRCCGWGPGRRYCVRWC"),83.68)
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(instaindex("QWGRRCCGWGPGRRYCVRWC")))
}