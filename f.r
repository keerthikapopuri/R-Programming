x<-c(16,26,27,23,24,22,23)
y<-c(33,42,35,32,28,37)
pha<-0.05
sx<-sd(x)
sy<-sd(y)
if(sx>sy)
{
  f<-sx^2/sy^2
  ftab<-qf(1-alpha,n1-1,n2-1)
}else
{
  f<-sy^2/sx^2
  ftab<-qf(1-alpha,n2-1,n1-1)
}
f=round(f,digits=3)
ftab=round(ftab,digits=3)
print("calculated value of f is:")
print(f)
print("table value:")
print(ftab)
ff<-var.test(x,y)
print("F value using built in ")
print(ff)

/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[1] "calculated value of f is:"
[1] 1.792
[1] "table value:"
[1] 4.772
[1] "F value using built in "

	F test to compare two variances

data:  x and y
F = 0.558, num df = 6, denom df = 5, p-value = 0.4973
alternative hypothesis: true ratio of variances is not equal to 1
95 percent confidence interval:
 0.07996944 3.34107892
sample estimates:
ratio of variances 
         0.5580029 

<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*/
