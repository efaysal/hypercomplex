rm(list=ls(all=TRUE))
sawa=read.table('C:/Users/faysal el khettabi/Documents/GitHub/hypercomplex/hypercomplex/toev.txt')
attach(sawa) 
sasaqq=order(sqrt(sawa[,1]*sawa[,2]))
ddda=sqrt(sawa[,1]*sawa[,2])
plot(ddda[sasaqq],sawa[sasaqq,3])

plot(ddda[sasaqq],sawa[sasaqq,4])








