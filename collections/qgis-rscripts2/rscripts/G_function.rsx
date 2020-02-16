##Point pattern analysis=group
##Layer=vector point
##Nsim=number 10
##showplots

library("maptools")
library("spatstat")

ppp=as(as(Layer, "Spatial"),"ppp")
plot(envelope(ppp, Gest, nsim=Nsim))
