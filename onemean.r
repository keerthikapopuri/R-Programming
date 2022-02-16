#parametric tests
x<-c(45,47,50,52,48,47,49,53,51)
u=47.5
pha=0.01
n=length(x)
print(t.test(x,mu=47.5,alternative="two.sided"))
mean=0
for(i in x)
  {
  mean=mean+i
  }
mean<-(mean/length(x))
sd=0
for(i in x){
  sd=sd+((i-mean)*(i-mean))
}
sd<-(sd/(length(x)-1))
sd<-sqrt(sd)
t<-((mean-u)*(sqrt(length(x)))/sd)
print("The calculated value is:")
print(t)
print("two-tailed test:")
print("table value:")
tablevalue<-qt(1-pha/2,n-1)
print(round(tablevalue,digits=3))
print("inference:")
if(abs(t)>tablevalue)
{
  print("reject h0")
}else
{
  print("accept h0")
}
print("one-tailed test:")
print("table value:")
tablevalue<-qt(1-pha,n-1)
print(round(tablevalue,digits=3))



/*o/p>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
One Sample t-test

data:  x
t = 1.8452, df = 8, p-value = 0.1022
alternative hypothesis: true mean is not equal to 47.5
95 percent confidence interval:
 47.09768 51.12454
sample estimates:
mean of x 
 49.11111 

[1] "The calculated value is:"
[1] 1.845226
[1] "two-tailed test:"
[1] "table value:"
[1] 3.355
[1] "inference:"
[1] "accept h0"
[1] "one-tailed test:"
[1] "table value:"
[1] 2.896
*/
