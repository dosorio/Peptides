MembranePos<-function(seq,structure){
  if(hmoment(seq,structure)<((-42.1*h(seq))+57.9) & (h(seq)>0.5)){
    print("Transmembrane")
  } else{
    if(hmoment(seq,structure)<((-42.1*h(seq))+57.9) & (h(seq)<0.5)){
      print("Globular")
    }
    else{
      if(hmoment(seq,structure)>((-42.1*h(seq))+57.9)){
        print("Surface")
      }
    }
  }
}