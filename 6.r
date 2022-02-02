x<-c(1,3,4,5,6,7,6)
sum=0
for(i in x){sum<-sum+i}
mean<-sum/length(x)
#mean deviation & standard deviation 
mean_dev=0
sd<-0
for(i in 1:length(x)){
  n<-abs(x[i]-mean)
  mean_dev<-mean_dev+n
  sd<-sd+(n*n)
}
mean_dev<-mean_dev/length(x)
sd<-sd/length(x)
print(mean_dev)
print(sd)