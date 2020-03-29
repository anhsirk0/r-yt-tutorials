# Sirpiensky triangle
# x and y coordinates
x <- c(0,10,5,2.5)
y <- c(0,0,8.66,4.33)

for (i in 1:1000){ 
  vertex <- sample(3)
  if (vertex==1){
    x <- c(x, (x[length(x)] + 0)/2)
    y <- c(y, (y[length(y)] + 0)/2)
  }
  if (vertex==2){
    x <- c(x, (x[length(x)] + 10)/2) 
    y <- c(y, (y[length(y)] + 0)/2)
  }
  if (vertex==3){
    x <- c(x, (x[length(x)] + 5)/2) 
    y <- c(y, (y[length(y)] + 8.6)/2)
  }
}
par(bg='black',mar=rep(0,4))
plot(x,y, pch=19,col='orange',cex=1/2)

#youtube video -- https://youtu.be/U4yanP62p1w
