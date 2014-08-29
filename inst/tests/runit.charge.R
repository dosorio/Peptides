test.charge <- function(){
  # COMPARED TO EMBOSS PEPSTATS
  # http://emboss.bioinformatics.nl/cgi-bin/emboss/pepstats
  # SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
  # Charge   = 3.0
  checkEquals(round(charge("FLPVLAGLTPSIVPKLVCLLTKKC",7,pKscale = "EMBOSS")),3)
  
  # COMPARED TO YADAMP
  # http://yadamp.unisa.it/showItem.aspx?yadampid=845&x=0,7055475
  # SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
  checkEquals(round(charge("FLPVLAGLTPSIVPKLVCLLTKKC",5,pKscale = "Lehn"),1),3)
  checkEquals(round(charge("FLPVLAGLTPSIVPKLVCLLTKKC",7,pKscale = "Lehn"),1),2.9)
  checkEquals(round(charge("FLPVLAGLTPSIVPKLVCLLTKKC",9,pKscale = "Lehn"),1),1.0)
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(charge("FLPVLAGLTPSIVPKLVCLLTKKC",7,pKscale = "Bjellqvist")))
}