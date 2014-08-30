test.hmoment <- function(){
  # COMPARED TO EMBOSS:HMOMENT
  # http://emboss.bioinformatics.nl/cgi-bin/emboss/hmoment
  # SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
  # ALPHA-HELIX 100º : 0.56
  # BETA-SHEET  160º : 0.25
  
  # ALPHA HELIX VALUE
  checkEquals(hmoment("FLPVLAGLTPSIVPKLVCLLTKKC",100), 0.56)
  
  # BETA SHEET VALUE
  checkEquals(hmoment("FLPVLAGLTPSIVPKLVCLLTKKC",160), 0.25)
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(hmoment("FLPVLAGLTPSIVPKLVCLLTKKC",100)))
}