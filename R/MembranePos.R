MembranePos<-function(seq,structure){
  if(hmoment(seq,structure)<((-0.4*h(seq))+0.6) & (h(seq)>0.5)){
    print("Transmembrane")
  } else{
    if(hmoment(seq,structure)<((-0.4*h(seq))+0.6) & (h(seq)<0.5)){
      print("Globular")
    }
    else{
      if(hmoment(seq,structure)>((-0.4*h(seq))+0.6)){
        print("Surface")
      }
    }
  }
}
