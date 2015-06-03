test.aindex <- function(){
  # COMPARED TO ExPASy ALIPHATIC INDEX
  # http://web.expasy.org/protparam/
  
  # SEQUENCE: DAYAQWLKDGGPSSGRPPPS
  # Aliphatic index: 29.50
  
  # CHECK VALUES
  checkEquals(aindex("DAYAQWLKDGGPSSGRPPPS"),29.50)
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(aindex("DAYAQWLKDGGPSSGRPPPS")))
}