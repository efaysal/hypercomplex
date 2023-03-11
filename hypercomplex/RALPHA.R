rm(list=ls(all=TRUE))
sawar=read.table('C:/Users/faysal el khettabi/Documents/GitHub/hypercomplex/hypercomplex/rtoev.txt',header = T)
sawaf=read.table('C:/Users/faysal el khettabi/Documents/GitHub/hypercomplex/hypercomplex/toev.txt',header = T)
sawa=rbind(sawar,sawaf)
sawaf=read.table('C:/Users/faysal el khettabi/Documents/GitHub/hypercomplex/hypercomplex/Artoev.txt',header = T)
sawa=sawaf
attach(sawa)
names(sawa)
sasaqq=order(sqrt(sawa[,1]*sawa[,1]))
aaaa=which(sawa[,1] <= 9 )
matplot(sawa[sasaqq[1:4000],1],sawa[sasaqq[1:4000],c(1,2,3,4,5,6)],type ="l" )
matplot(sawa[sasaqq,1],sawa[sasaqq,c(1,2,7,8)],type ="l" )
matplot(sawa[sasaqq,1],cbind(sawa[sasaqq,c(1,2,3,4,5,8,9)],sqrroot=sawa[sasaqq,1]**0.5),type ="l" )
matplot(sawa[sasaqq,1],cbind(sawa[sasaqq,c(1,2,3,8)],sqrroot=sawa[sasaqq,1]**0.5),type ="l" )
matplot(sawa[sasaqq,1],cbind(sawa[sasaqq,c(1,2,3,8)],sqrroot=sawa[sasaqq,1]**0.5,sqrroot1=sawa[sasaqq,1]**0.8),type ="l" )

plot(sawa[aaaa,1],sawa[aaaa,c(3)])
points(sawa[aaaa,1],sawa[aaaa,c(8)])

# function needed for FITTING purposes
Gompertzmodel4PARAMS = function(B,C,D,E,x) {
  C+(D-C)*(exp(-(exp(-B*(x-E))))) 
}
dxx=sawa[sasaqq,c(8)]
timex=1:length(dxx)
x = timex 
y=dxx/max(dxx)
require("drc")
fm <- drm(y ~ x, data = data.frame(x, y), fct = G.4())
# print(summary(fm))
params=as.numeric(coef(fm))
pvalues <-as.numeric(summary(fm)$coefficients[,4]) 
params[1]=-params[1]
b=params[1]
c=params[2]
d=params[3]
e=params[4]








plot(sawa[sasaqq,1],sawa[sasaqq,3],type ="l")
points(sawa[sasaqq,1],sawa[sasaqq,4],type ="l",col='blue3')
points(sawa[sasaqq,1],sawa[sasaqq,8],type ="l",col='gold')
points(sawa[sasaqq,1],sawa[sasaqq,1],type ="l",col='green')


plot(sawa[sasaqq,1],log(sawa[sasaqq,2]/sawa[sasaqq,5]),type ="l")




plot(sawa[sasaqq,1],log(sawa[sasaqq,2]/sawa[sasaqq,4]),type ="l")
points(sawa[sasaqq,1],log(sawa[sasaqq,2]/sawa[sasaqq,8]),type ="l",col='gold')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.6),type ="l",col='purple4')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.5),type ="l",col='purple3')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.4),type ="l",col='purple2')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.3),type ="l",col='purple1')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.28),type ="l",col='red4')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.26),type ="l",col='red3')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.25),type ="l",col='red2')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.2),type ="l",col='red1')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.15),type ="l",col='red')


plot(sawa[sasaqq,1],log(sawa[sasaqq,2]/sawa[sasaqq,4]),type ="l")
points(sawa[sasaqq,1],log(sawa[sasaqq,2]/sawa[sasaqq,8]),type ="l",col='gold')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.6),type ="l",col='purple4')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.5),type ="l",col='purple3')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.4),type ="l",col='purple2')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.3),type ="l",col='purple1')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.28),type ="l",col='red4')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.26),type ="l",col='red3')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.25),type ="l",col='red2')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.2),type ="l",col='red1')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.15),type ="l",col='red')


plot(sawa[sasaqq,1],(sawa[sasaqq,2]/sawa[sasaqq,4]),type ="l")
points(sawa[sasaqq,1],(sawa[sasaqq,2]/sawa[sasaqq,8]),type ="l",col='gold')









plot(sawa[sasaqq,1],log(sawa[sasaqq,2]/sawa[sasaqq,3]),type ="l")

lm(log(sawa[sasaqq,2]/sawa[sasaqq,4])~log(sawa[sasaqq,1]))


plot(sawa[sasaqq,1],sawa[sasaqq,8],type ="l")
points(sawa[sasaqq,1],sawa[sasaqq,1],type ="l")
lm(log(sawa[sasaqq,8])~log(sawa[sasaqq,1]))



plot(sawa[sasaqq,1],log(sawa[sasaqq,2]/sawa[sasaqq,4]),type ="l")
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.6),type ="l")
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.5),type ="l")
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.4),type ="l")
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.3),type ="l")
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.28),type ="l",col='blue3')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.26),type ="l",col='blue')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.25),type ="l",col='green')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.2),type ="l",col='red')
points(sawa[sasaqq,1],1/(sawa[sasaqq,1]**0.15),type ="l")






plot(sawa[sasaqq,1],log(sawa[sasaqq,2]/sawa[sasaqq,5]),type ="l")


plot(sawa[sasaqq,1],log(sawa[sasaqq,2]/sawa[sasaqq,6]),type ="l")




tail(sawa[sasaqq,])

1/137


x = sawa[sasaqq,1]
y = log(sawa[sasaqq,2]/sawa[sasaqq,9])
plot(x,y,type="l")
lo <- loess(y~x)
xl <- seq(min(x),max(x), (max(x) - min(x))/1000)
out = predict(lo,xl)
lines(xl, out, col='red', lwd=2)
y1 = log(sawa[sasaqq,2]/sawa[sasaqq,4])
points(x,y1,type="l")



infl <- c(FALSE, diff(diff(out)>0)!= 0)
points(xl[infl ], out[infl ], col="blue")

plot(diff(out),type="l")



plot(sawa[sasaqq,1],log(sawa[sasaqq,2]/sawa[sasaqq,3]))

plot(sawa[sasaqq,1],sawa[sasaqq,2],col='gold',type = 'l' )
lines(sawa[,1][sasaqq],sawa[sasaqq,3],col='blue')
lines(sawa[,1][sasaqq],sawa[sasaqq,4],col='red')
lines(sawa[,1][sasaqq],sawa[sasaqq,5],col="black")
lines(sawa[,1][sasaqq],sawa[sasaqq,6],col='green')
lines(sawa[,1][sasaqq],sawa[sasaqq,7],col="purple")































sasaqq=order(sqrt(sawa[,1]*sawa[,1]))
ddda=sqrt(sawa[,1]*sawa[,1])


plot(ddda[sasaqq],sawa[sasaqq,3])
points(ddda[sasaqq],sawa[sasaqq,2],col='blue')
# 
# # Basic 3d graphics
# library(scatterplot3d)
# scatterplot3d(data.frame(sawa[,1],sawa[,2],sawa[,4]))
# 
# 
# # set.seed(417)
# # library(plotly)
# # alpha1 <- sawa[,1]
# # alpha2 <- sawa[,2]
# # emane<- sawa[,4]
# # plot_ly(x=alpha1, y=alpha2, z=emane, type="scatter3d", mode="markers", color=alpha1*alpha2)
# 
# # 
# # 
# # library("gg3D")
# # ## An empty plot with 3 axes
# # qplot(x=0, y=0, z=0, geom="blank") + 
# #   theme_void() + axes_3D()
# # 
# # irisx=data.frame(x=alpha1, y=alpha2, z=emane)
# # ggplot(irisx, aes(x=x, y=y, z=z, color=x*y)) + theme_void() +axes_3D() + stat_3D()
# 
# 
# 
# 
# 
# 
# 
