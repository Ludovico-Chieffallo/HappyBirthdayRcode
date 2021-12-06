install.packages("plotrix")
library(plotrix)
candle = function(pos)
{
  x=pos[1]
  y=pos[2]
  rect(x,y,x+.1,y+2,col="white")
  #  polygon(c(x-.2,x+.4,x+.1,x-.2), c(y+2,y+2,y+2.4,y+2),col="orange")
  #polygon(c(x+.05,x-.1,x+.1,x+.3,x+.15,x+0.05), c(y+2,y+2.3,y+2.6,y+2.3,y+2,y+2),col="red")
  draw.circle(x+.05, y+2.05, radius=.08, col="red")
}

candle2 = function(pos)
{
  x=pos[1]
  y=pos[2]
  rect(x,y,x+.1,y+2,col="white")
  #  polygon(c(x-.2,x+.4,x+.1,x-.2), c(y+2,y+2,y+2.4,y+2),col="orange")
  #polygon(c(x+.05,x-.1,x+.1,x+.3,x+.15,x+0.05), c(y+2,y+2.3,y+2.6,y+2.3,y+2,y+2),col="red")
  draw.circle(x+.05, y+2.05, radius=.08, col="white")
}

cake_colour="orange"
plot(c(0,10), c(0,10),type="n", bty="n",xaxt="n",yaxt="n", xlab="",ylab="")
title(main="Buon comple/tale professore!", 
      col.main='red', cex.main=3, font.main=3)
#plot(c(0,10), c(0,10),type="n", bty="n", main="Cake", xlab="",ylab="")
draw.ellipse(5,2,col= "blue",a=4.4,b=1.7,border=1)
draw.ellipse(5,2,col=cake_colour,a=4,b=1.4,border=1)
rect(1,2,9,5,col=cake_colour,border=cake_colour)
lines(c(1,1),c(2,5))
lines(c(9,9),c(2,5))
draw.ellipse(5,5,col=cake_colour,a=4,b=1.4)

text(5,2.2,"Auguri Professor Duccio!", col="black", font=4, cex=1.5)

while (1) {
  for (i in 1:5) {
    i = i * 1.4
    candle(c(i+.3,4.5))
    candle(c(i+.5,5))
    candle(c(i+.7,4.5))
    candle(c(i+.9,5))
    candle(c(i+1.1,4.5))
  }
  Sys.sleep(0.5)
  for (i in 1:5) {
    i = i * 1.4
    candle2(c(i+.3,4.5))
    candle2(c(i+.5,5))
    candle2(c(i+.7,4.5))
    candle2(c(i+.9,5))
    candle2(c(i+1.1,4.5))
  }
  Sys.sleep(0.5)
  
}
