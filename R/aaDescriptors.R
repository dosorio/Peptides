#' @export aaDescriptors
aaDescriptors <- function(seq){
  # Remove spaces and line breaks
  seq <- gsub("[[:space:]]+","",as.vector(seq))
  sequences <- length(seq)
  # Length validation
  if(all(nchar(seq)==nchar(seq[1]))){
    # Split by amino acids
    seq <- strsplit(seq,"")
    # Extract descriptors
    desc <- lapply(seq,function(seq){
      sapply(seq,function(aa){
        c(data.frame(AAdata$Hydrophobicity)[aa,],
          data.frame(AAdata$crucianiProperties)[aa,],
          data.frame(AAdata$kideraFactors)[aa,],
          data.frame(AAdata$zScales)[aa,],
          data.frame(AAdata$FASGAI)[aa,],
          data.frame(AAdata$tScales)[aa,],
          data.frame(AAdata$VHSE)[aa,],
          data.frame(AAdata$ProtFP)[aa,],
          data.frame(AAdata$stScales)[aa,],
          data.frame(AAdata$BLOSUM)[aa,],
          data.frame(AAdata$MSWHIM)[aa,]
        )
      })
    })
    # Format output
    col_names <- as.vector((outer(rownames(desc[[1]]),seq_len(dim(desc[[1]])[2]),paste,sep=".")))
    descriptors <- matrix(data = NA,nrow = sequences,ncol = length(col_names),dimnames = list(list(),col_names))
    for(sequence in seq_along(desc)){
      descriptors[sequence,] <- as.numeric(desc[[sequence]])
    }
    # Return
    return(descriptors)
  } else {
    stop("All sequences must have the same length.")
  }
}
