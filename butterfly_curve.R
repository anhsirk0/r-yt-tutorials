#butterfly curve
#t sequence of angles
t = seq(0,12*pi,0.001)#from 0 to 12*pi , increasing by 0.01

a = exp(cos(t)) - 2*cos(4*t) -sin(t/12)^5
# coordinates
x = sin(t)*a
y = cos(t)*a

#customizing the plot
#par is for parameters
#background black & margins removed
par(bg='black',mar=rep(0,4))
#adding gradient colors
#this is a function to generate gradient colors
color.gradient <- function(x,colors=c('red','yellow','green'),colsteps=100){
  return(colorRampPalette(colors)(colsteps)[findInterval(x,seq(min(x),max(x),length.out=colsteps))])
}
#plot
#pch is point character (19 = dots)
#cex is to scale view

plot(x,y,type='p',col=color.gradient(x),pch=19,cex=1/9)#type = line


