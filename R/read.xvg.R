# read.xvg
# This function reads the .XVG output files from GROMACS molecular dynamics package

read.xvg<-function(file){
  # Read flat file
  X<-readLines(file)
  # Count the number of columns
  C<-length(grep(pattern="@ s",x=X[1:length(X)]))+1
  # Read colnames
  P<-grep(pattern="@ s",x=X[1:length(X)])
  P1<-grep(pattern="xaxis",x=X[1:length(X)])
  # Unifying comments
  X<-sub("#",replacement="@",X)
  # Extracting the data
  X<-as.numeric(scan(file,skip=max(grep(pattern="@",x=X[1:length(X)])),what="",quiet=TRUE))
  # Asign colnames
  name<-list(c(1:(length(X)/C)),c("Time"))
  for (i in 1:C-1){
    name[[2]][i]<-(scan(file,skip=min(P)-1,nmax=min(P)+1,what="",quiet=TRUE)[4*i])
  }
  name[[2]][2:C]<-name[[2]][1:C-1]
  name[[2]][1]<-(scan(file,skip=min(P1)-1,nmax=min(P1)+1,what="",quiet=TRUE)[4])
  # Return a matrix
  as.data.frame(matrix(X,byrow=TRUE,ncol=C,nrow=length(X)/C,dimnames=as.list(name)))
}
