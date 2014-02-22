read.xvg<-function(file){
  X<-readLines(file)
  C<-length(grep(pattern="@ s",x=X[1:length(X)]))+1
  P<-grep(pattern="@ s",x=X[1:length(X)])
  P1<-grep(pattern="xaxis",x=X[1:length(X)])
  X<-sub("#",replacement="@",X)
  X<-as.numeric(scan(file,skip=max(grep(pattern="@",x=X[1:length(X)])),what="",quiet=TRUE))
  name<-list(c(1:(length(X)/C)),c("Time"))
  for (i in 1:C-1){
    name[[2]][i]<-(scan(file,skip=min(P)-1,nmax=min(P)+1,what="",quiet=TRUE)[4*i])
  }
  name[[2]][2:C]<-name[[2]][1:C-1]
  name[[2]][1]<-(scan(file,skip=min(P1)-1,nmax=min(P1)+1,what="",quiet=TRUE)[4])
  A<-as.data.frame(matrix(X,byrow=TRUE,ncol=C,nrow=length(X)/C,dimnames=as.list(name)))
}
