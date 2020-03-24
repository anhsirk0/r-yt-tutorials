# cardioid
# first we have to draw a circle
times.table <- function(k){

t = seq(0,2*pi,0.01) #sequence of angles

#coordinates
x = cos(t)
y = sin(t) 

par(bg='black',mar=rep(0,4))# remove margins and add black background
plot(x,y,type='l',col='orange')

#now we have to divide it in 20 points
# we will divide 2*pi into 20 parts (as angles)

t2 = seq(0,2*pi,2*pi/200)#from 0 to 2*pi ,by 2*pi/20
x2 = cos(t2)
y2 = sin(t2)
#add points to the plot

#points(x2,y2,pch=19,col='orange')

#lets check length of x2
# it has 21 points,starting from 0 (point numbers)

#since we dont need 0th point, we will remove it
# create new vector for needed points
x3 = x2[2:length(x2)]#all x2 elements except the first one
y3 = y2[2:length(y2)]

##since its has 20 points, and we need to
#connect the points with their doubled points
#so we need 40 points for them
#lets duplicate x3 and y3
x3 = rep(x3,k) #replicate k times
y3 = rep(y3,k) #y3 2 times
# we are storing them in x3 and y3 respectively


#finally we can now connect them
#index of x2 (20points)
s = 1:length(x2)

#we will use segments function
#segments(x0,y0,x1,y1)
segments(x3[s],y3[s],x3[k*s],y3[k*s],col='orange')
#connecting to doubles

#now lets make it for k times table

}
#calling the function
times.table(50)


# Video --  
