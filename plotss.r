# Clear R workspace
rm(list = ls() )
1
2
g<-c("jan","feb","mar","apr","may")
barplot(h,names.arg=g,,xlab="year",ylab="sand",col="blue",main="sand data",border="red")
x<-1:10
y<-10:19
plot(x,y,type="l")
polygon(c(0,x,0),c(10,y,19),angle=78,col="blue")
v<-7:15
hist(v,xlab="weight",ylab="labs",col="pink",main="show",border="red",breaks=13)
pie(h,g,col="pink")
f<-1:10
s<-2:11
plot(x=f,y=s,xlab="weihts",ylab="data",col="pink")
