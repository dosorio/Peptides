aaCheck <- function(seq){
  if(!any(lengths(seq) > 1)){
    seq <- toupper(seq)
    seq <- gsub(pattern = "[[:space:]]+",replacement = "",x = seq)
    seq <- strsplit(x = seq,split = "")
  } else {
    seq <- lapply(seq,toupper)
  }
  check <- unlist(lapply(seq,function(sequence){
    !all(seq[[1]]%in%c("A" ,"C" ,"D" ,"E" ,"F" ,"G" ,"H" ,"I" ,"K" ,"L" ,"M" ,"N" ,"P" ,"Q" ,"R" ,"S" ,"T" ,"V" ,"W" ,"Y", "-"))
  }))
  if(sum(check) > 0){
    sapply(which(check == TRUE),function(sequence){warning(paste0("Sequence ",sequence," has unrecognized amino acid types. Output value might be wrong calculated"),call. = FALSE)})
  }
  return(seq)
}
