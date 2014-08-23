test.instaindex <- function(){
  # COMPARED TO ExPASy INSTAINDEX
  # http://web.expasy.org/cgi-bin/protparam/protparam
  # SEQUENCE: QWGRRCCGWGPGRRYCVRWC
  
  # CHECK INSTAINDEX VALUE
  checkEquals(instaindex("QWGRRCCGWGPGRRYCVRWC"),83.68)
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(instaindex("QWGRRCCGWGPGRRYCVRWC")))
}