# plot.xvg
# This function plot the XVG output file from GROMACS molecular dynamics package

plot.xvg<-function(x, ...){
  # Load data
  data<-read.xvg(x)
  # Read file
  X<-readLines(x)
  # Set Labels
  P1<-grep(pattern="title",x=X[1:length(X)])
  P2<-grep(pattern="s0",x=X[1:length(X)])
  # Plot
  plot(data[,1],data[,2],type="l",
       main=(scan(x,skip=min(P1)-1,nmax=min(P1)+2,what="",quiet=TRUE)[3]),
       xlab=(scan(x,skip=min(P1)-1,nmax=min(P1)+2,what="",quiet=TRUE)[7]),
       ylab=(scan(x,skip=min(P1)-1,nmax=min(P1)+2,what="",quiet=TRUE)[11]))
  legend("topright",scan(x,skip=min(P2)-1,nmax=min(P2),what="",quiet=TRUE)[4],lty=c(1,1))
}
