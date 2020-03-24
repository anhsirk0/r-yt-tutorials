# solve quadratic equations
#making it a function
solve.quadratic <- function(a,b,c){

# discriminant
d = b^2 - 4*a*c

#solutions for real
if (d >= 0){
s1 = (-b + sqrt(d))/(2*a)
s2 = (-b - sqrt(d))/(2*a)

#plotting the graph, its a bit tricky part
#first we find mid point of s1 and s2
mp = (s1 + s2)/2

#left most x coord.
p1 = s1 - mp
#right most x coord.
p2 = mp + s2

#x coordinates to plot ,ie from p1 to p2
# we will use seq function
x = seq(p1,p2,length.out = 40)  # a sequence from p1 to p2 of total length 40

#y coordinates
y = a*x^2 + b*x +c

#plotting it 
plot(x,y,type = 'l') # it will be curve line

#plotting solution points
points(s1,0,col='red',pch=19) #point character = dot
points(s2,0,col='red',pch=19)

#drawing axes
# x axis
segments(x[1],0 , x[length(x)] ,0 , col='green') #segment draws a line segment between two points

#y axis
segments(0,y[1] , 0,y[length(y)/2],col='blue') 
}

#for complex roots
if (d < 0){
  s1 = (-b + sqrt(Mod(d))*1i)/(2*a) #Mod function for absolute value of d
  s2 = (-b - sqrt(Mod(d))*1i)/(2*a) #1i for imaginary part
}
#printing solutions
print(s1)
print(s2)
# as we cant plot complex roots on real x-y plane so we avoid plotting it
}

#calling the function
solve.quadratic(1,4,3)

# and we are done with our program
