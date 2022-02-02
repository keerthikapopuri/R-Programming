h<-c(5.5,2,3,2,5)
g<-c("jan","feb","mar","apr","may")
barplot(h,names.arg=g,,xlab="year",ylab="sand",col="light blue",main="sand data",border="gold")
x <- seq(-pi,pi,0.1)
y <- sin(x)
plot(x,y)

plot(x,
     y,
     main="Plotting",
     ylab="sin(x)",
     type="l",
     col="blue")

plot(x,
     y,
     main="Plotting",
     ylab="sin(x)",
     type="l",
     col="blue")
lines(x,
      cos(x),
      col="red")
legend("topleft",
       c("sin(x)","cos(x)"),
       fill=c("blue","red"))
