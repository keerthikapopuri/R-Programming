e = readline("enter the number of elements"); 
e = as.integer(e);
x=scan(file = "", what = integer(), n=e)
sum=0.0
count=0
#mean of data
for(i in x){
  sum=sum+i
  count=count+1
}
mean=sum/count
print(paste0("mean is:",mean))
print(mean(x))
#median of data
for(i in 1:(length(x)-1)){
  for(j in (i+1):length(x)){
    if(x[i] > x[j]){
      x[c(i,j)] = x[c(j,i)] # +1 for this
    }
  }
}
if(count%%2==0){
  index=(x[count%/%2]+x[(count%/%2)+1])/2
  print(paste0("median is:",index))
}else{
  index=x[count%/%2]
  print(paste0("median is:",x[index]))
}
print(median(x))
#MODE OF DATA
base=length(x)
prev_count=1
ind=1
res=-1
while(ind<=base){
  count=0
  for(ele in x){
    if(ele==x[ind]){
      count=count+1
        }
  }
  ind=ind+1
  if(prev_count<count){
    res=x[ind]
    prev_count=count}
}
if(res==-1){
  print("no mode")
}else{
  print(paste0("Mode is:",res))
}