x<-c(107,148,123,165,102,119)
y<-c(134,115,112,151,133,129)
pha=0.01
d<-x-y
dbar<-sum(d)/length(d)
sdd<-sd(d)
t<-(dbar*sqrt(length(d)))/sdd
print("the calculated value of t :")
print(t)
print("Table value for two-tailed test:")
tablevalue<-qt(1-pha/2, df=n-1)
print(round(tablevalue,digits=4))
print("Table value for one-tailed test:")
tablevalue<-qt(1-pha, df=n-1)
print(round(tablevalue,digits=3))
t<-t.test(x,y,paired=TRUE)
print(t)

/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[1] "the calculated value of t :"
[1] -0.1618979
[1] "Table value for two-tailed test:"
[1] 3.3554
[1] "Table value for one-tailed test:"
[1] 2.896

	Paired t-test

data:  x and y
t = -0.1619, df = 5, p-value = 0.8777
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -28.12965  24.79632
sample estimates:
mean of the differences 
              -1.666667 
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*/
