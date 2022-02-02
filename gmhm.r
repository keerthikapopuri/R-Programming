e = readline("enter the number of elements"); 
e = as.integer(e);
x=scan(file = "", what = integer(), n=e)
#GEOMETRIC MEAN
pro=1
for(i in 1:length(x)){
  pro=pro*x[i]
}
gm=pro^(1/e)
gm=round(gm,digits=3)
print(paste0("The geometric mean is:",gm))
#HARMONIC MEAN
sum=0
for(i in 1:length(x)){
  temp=1/x[i]
  sum=sum+temp
}
hm=e/sum
hm=round(hm,digits=3)
print(paste0("The harmonic mean is:",hm))