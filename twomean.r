x<-c(63,65,68,69,71,72)
y<-c(61,62,65,66,69,69,70,71,72,73)
pha=0.05
n1<-length(x)
n2<-length(y)
sd=sqrt((((n1-1)*sd(x)^2)+(n2-1)*sd(y)^2)/(n1+n2-2))
t=(mean(x)-mean(y))/(sd*sqrt((1/n1)+(1/n2)))
print("Calculated value of t:")
print(round(t,digits=4))
print("Table value for two-tailed test:")
tablevalue<-qt(1-pha/2,n1+n2-2)
print(round(tablevalue,digits=3))
print("Table value for one-tailed test:")
tablevalue<-qt(1-pha,n1+n2-2)
print(round(tablevalue,digits=3))
t<-t.test(x,y)
print(t)


/* >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[1] "Calculated value of t:"
[1] 0.0992
[1] "Table value for two-tailed test:"
[1] 2.145
[1] "Table value for one-tailed test:"
[1] 1.761

	Welch Two Sample t-test

data:  x and y
t = 0.10388, df = 12.228, p-value = 0.9189
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -3.98616  4.38616
sample estimates:
mean of x mean of y 
     68.0      67.8 
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*/
