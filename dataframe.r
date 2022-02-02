e = readline("enter the number of elements"); 
e = as.integer(e);
x=scan(file = "", what = integer(), n=e)
m=mean(x)
print(paste0("Mean is:",m))
print(paste0("Median is:",median(x)))
#Mode of data
ind=1
res<-c()
while(ind<base){
  count=0
  for(ele in x){
    if(ele==x[ind]){
      count=count+1
    }
  }
  ind=ind+1
  res[ind]=count
}
m=max(res)
print(paste0("Mode is:",m))