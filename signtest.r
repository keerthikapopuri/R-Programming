x<-c(93,88,107,115,98,97,103,86,113,107,112,90,98,93,99,103,101,108,96,104)
m=99
pha=0.05
positive=0
negitive=0
for(i in x){
  if(i-m>0)
  {
    positive=positive+1
  }
  else if(i-m<0)
  {
    negitive=negitive+1
  }
}
n=positive+negitive
print(n)
u=min(positive,negitive)
j=0
p=0.0
while(j<=u)
{
  p=p+choose(n,j)
  j=j+1
}
p=p*(0.5**n)
print(p)