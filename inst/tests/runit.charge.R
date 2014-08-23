test.charge <- function(){
  # COMPARED TO EMBOSS PEPSTATS
  # SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
  # Charge   = 3.0
  checkEquals(charge("FLPVLAGLTPSIVPKLVCLLTKKC",7,pKscale = "EMBOSS"),3)
  
  # COMPARED TO YADAMP
  # http://yadamp.unisa.it/showItem.aspx?yadampid=845&x=0,7055475
  # SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
  checkEquals(charge("FLPVLAGLTPSIVPKLVCLLTKKC",5,pKscale = "Bjellqvist"),round(3,0))
  checkEquals(charge("FLPVLAGLTPSIVPKLVCLLTKKC",7,pKscale = "Bjellqvist"),round(2.91,0))
  checkEquals(charge("FLPVLAGLTPSIVPKLVCLLTKKC",9,pKscale = "Bjellqvist"),round(1.09,0))
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(charge("FLPVLAGLTPSIVPKLVCLLTKKC",7,pKscale = "Bjellqvist")))
}