#Heart Curve
#create a sequnce of angles from 0 to 2*pi
# seq(from , to , by)
t = seq(0,2*pi,0.01)

#coordinates
x = 16*sin(t)^3
y = 13*cos(t) -5*cos(2*t) -2*cos(3*t) -cos(4*t)

#customizing the plot
par(bg='black',mar=rep(0,4)) #black background & no margins

#create a gradient color function
color.gradient <- function(x,colors=c('red','yellow','green'),colsteps=100){
  return(colorRampPalette(colors)(colsteps)[findInterval(x,seq(min(x),max(x),length.out=colsteps))])
}

#plot the curve
plot(x,y,col=color.gradient(x),cex=2,pch=19)
#cex scale the view & pch is point character 19==dots

#we can use polygon function to fill it
polygon(x,y,col='purple')
