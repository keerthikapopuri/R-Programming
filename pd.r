x<-c(0,1,2,3,4,5,6,7)
f<-c(7,6,19,35,30,23,7,1)
fx<-f*x
sumfx<-sum(f*x)
sumf<-sum(f)
l<-sumfx/sumf
pr<-dpois(0:7,l)
pr<-round(pr,digits=3)
fe<-sumf*pr
fe<-round(fe,digits=3)
fee<-round(fe)
mydata<-data.frame(x,f,fx,pr,fe,fee)
sums<-c(NA,sum(f),sum(f*x),NA,NA,sum(fe))
mydata<-rbind(mydata,sums)
print(mydata,row.names=FALSE)
result<-chisq.test(f,p=pr,rescale.p=TRUE)
print(result)
tablevalue<-qchisq(.95, df=s)
print(tablevalue)

