# maurer rose
# turn it in a function of n & d
maurer <- function(n,d){
#d angle in degrees 


#k sequence with 361 angles
k = seq(0,360*d*pi/180,d*pi/180) # d should be in degrees 

# r 
r = sin(n*k)

#polar form = (sin(nk),k)
# x coordinate
x = r*cos(k) # this is cartesian coordinate
# y coordinate
y = r*sin(k)
# lets customize it
#par function is for parameters
par(bg='black') # black background
par(mar=rep(0,4)) # remove margins

#plotting
plot(x,y,type='l',col='green') #type l is important
}
# calling the function
maurer(2,39)
# draw other roses

# Video -- https://www.youtube.com/watch?v=L5NxsCxebd4
