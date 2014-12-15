test.boman <- function(){
  
  # COMPARED TO YADAMP DATABASE
  # http://yadamp.unisa.it/showItem.aspx?yadampid=845&x=0,4373912
  # SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
  # BOMAN INDEX  -1.24  
  
  # CHECK VALUES
  checkEquals(boman("FLPVLAGLTPSIVPKLVCLLTKKC"),-1.24,tolerance = 0.01)
  
  # CHECK OUTPUT CLASS
  checkTrue(is.numeric(boman("FLPVLAGLTPSIVPKLVCLLTKKC")))
}