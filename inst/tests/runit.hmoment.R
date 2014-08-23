test.hmoment <- function(){
  # COMPARED TO EMBOSS:HMOMENT
  # http://emboss.bioinformatics.nl/cgi-bin/emboss/hmoment
  # SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
  
  # ALPHA HELIX VALUE
  checkEquals(hmoment("FLPVLAGLTPSIVPKLVCLLTKKC",100), 0.56, tolerance = 0.01)
  
  # BETA SHEET VALUE
  checkEquals(hmoment("FLPVLAGLTPSIVPKLVCLLTKKC",160), 0.25, tolerance = 0.01)
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(hmoment("FLPVLAGLTPSIVPKLVCLLTKKC",100)))
}