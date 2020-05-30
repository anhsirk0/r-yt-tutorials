# random walk
#origin
x = 0
y = 0

no_of_points = 100

for (i in 1:no_of_points){
  #create a random number between 1 to 4
  s = sample(1:4,1)
  if (s==1){ #left = minus 1 fro 0 from y
    x = c( x, x[length(x)] - 1)
    y = c(y, y[length(y)] + 0)
  }
  
  #similarly for right up and down
  if (s==2){# right = x+1, y +0
    x = c(x,x[length(x)]+1)
    y = c(y, y[length(y)] + 0)
  }
  
  if (s==3){ #up = y+1, x+0
    x = c(x, x[length(x)]+0)
    y = c(y, y[length(y)] + 1)
    
  }
  
  if (s==4){ #down = y-1, x+0
    x = c(x, x[length(x)]+0)
    y = c(y, y[length(y)] - 1)
  }
  
}

# black bg and remove margins
par(bg='black',mar=rep(0,4))

plot(x,y,col="orange",type='n') # make it empty

#add origin to plot
points(0,0,col='red',pch=19)

#arrows 
#a = 2:no_of_points

# add rainbow colors
clr = rainbow(no_of_points)
#arrows(x[a-1],y[a-1],x[a],y[a],col=clr)

# lets add arrows one by one

for (i in 2:no_of_points){
  # animate it
  Sys.sleep(0.15)
  
  arrows(x[i-1],y[i-1], x[i], y[i],length = 0.1, col=clr[i])
}

# and we are done
