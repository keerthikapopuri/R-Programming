data<-c(1,2,3,4,5,6,7,8)
dat<-c(1,2,3,4,5,6,7,8)
#Finding range 
#data<-order(data)
for(i in 1:(length(data)-1)){
  for(j in (i+1):length(data)){
    if(data[i] > data[j]){
      data[c(i,j)] = data[c(j,i)] # +1 for this
    }
  }
}
ind<-length(data)
range<-data[ind]-data[1]
print(range)
#quartile deviation
count<-length(data)
if(count%%2!=0){
q1<-0.25*(count+1)
q<-floor(q1)
Q1<-dat[q]+((q1-q)*((dat[q+1]-dat[q])))
q3<-0.75*(count+1)
qa<-floor(q3)
Q3<-dat[qa]+((q1-qa)*((dat[qa+1]-dat[qa])))
quartile<-(Q1+Q3)/2
print(quartile)
}else
{q1<-0.25*(count)
q<-floor(q1)
Q1<-dat[q]+((q1-q)*((dat[q+1]-dat[q])))
q3<-0.75*(count)
qa<-floor(q3)
Q3<-dat[qa]+((q1-qa)*((dat[qa+1]-dat[qa])))
quartile<-(Q1+Q3)/2
print(quartile)}

