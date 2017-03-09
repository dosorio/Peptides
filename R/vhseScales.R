vhseScales <- function(seq){
  # Remove spaces and line breaks
  seq <- gsub("[[:space:]]+","",as.vector(seq))
  
  # Split the sequence by amino-acids
  seq <- strsplit(seq, "")
  
  # Load the VHSE-scales
  scales <- AAdata$VHSE
  
  # Computes the VHSE-scales for given sequences
  lapply(seq, function(seq) {
    sapply(names(scales), function(scale) {
      (sum(scales[[scale]][seq], na.rm = TRUE) / length(seq))
    })
  })
}