par(mar=c(1, 1, 1, 1))
x<-(c(2,4,6,8,10))
y<-(c(3,6,9,12,15))
plot(x,y,main = "table graph",
      xlab = "table of 2",ylab = "table of 3")

plot(1:10,type="l",lwd=2,col="skyblue",lty=2)
lines(x,y,type = "l",col="red",lty=1)

#SCATTERPLOT
x<-c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x,y,main = "Observation of cars",xlab ="car age",ylab = "car speed",col="red" )
points(x2,y2,col="purple",cex=2)

#PIE CHART
x<-c(20,15,45,10,10)
my_lbl<-c("safari","punch","nexon","harrier","nexon ev")
colr<-c("darkblue","purple","grey","black","skyblue")
pie(x,init.angle = 90,labels = my_lbl,main = "Sales of TATA Motors",col = colr)
legend("bottomleft",my_lbl,fill = colr)

#BARPLOT
x<-c("A","B","C","D")
y<-c(3,6,9,12)
barplot(y,names.arg = x)

mtcars
mean(mtcars$mpg)
sort(mtcars$mpg)
median(mtcars$mpg)
names(sort(-table(mtcars$wt)))[1]

maxx<-max(mtcars$wt)
maxx
minn<-min(mtcars$wt)
minn
rangee<-maxx-minn
print(rangee)

mat<-c(mtcars$mpg,mtcars$cyl,mtcars$hp,mtcars$carb)
mat
IQR(mtcars$mpg)
sd(mtcars$mpg)
 install.packages("psych")
require(psych)
describe(mat,na.rm = TRUE)

#Z TEST
install.packages("BSDA")
library(BSDA)
#ONE SAMPLE Z TEST
iq<-c(88, 92, 94, 94, 96, 97, 97, 97, 99, 99,
      105, 109, 109, 109, 110, 112, 112, 113, 114, 115)
z.test(iq,mu=100,sigma.x = 15)

cityA = c(82, 84, 85, 89, 91, 91, 92, 94, 99, 99,
          105, 109, 109, 109, 110, 112, 112, 113, 114, 114)
cityB = c(90, 91, 91, 91, 95, 95, 99, 99, 108, 109,
          109, 114, 115, 116, 117, 117, 128, 143, 130, 133)
z.test(x=cityA,y=cityB,mu=0,sigma.x = 15,sigma.y = 15)


