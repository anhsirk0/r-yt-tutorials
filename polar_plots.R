# polar plots for even numbers

#our polar coordinates will be
# (p,theta) & p=theta
# (theta, theta)

#generate even numbers
even = seq(0,10000,2)

#cartesian coordinates
x = even*cos(even)
y = even*sin(even)

#black background and remove margins
par(bg='black', mar=rep(0,4))

plot(x,y,pch=19,col='orange',cex=1/8)


########################################
#similarly we can generate polar plots for prime numbers
library(primes)

p = generate_primes(0,90000)

#coordinates
x = p*cos(p)
y = p*sin(p)

plot(x,y,pch=19,col='green',cex=1/8) #cex is for zooming



#################################################
#similarly we can create polar plots for other patterns

s = seq(0,29000,29)

x = s*cos(s)
y = s*sin(s)

plot(x,y,col='yellow',pch=19,type='l',cex=1/4)

# it becomes interesting when you select type of line
