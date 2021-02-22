##Point pattern analysis=group
##Layer=vector point
##Simulations=number 100
##Plot_name=string 'K function'
##showplots
library(spatstat)
library(maptools)

sp <- as(Layer, "Spatial")
sp <- as(sp, "ppp")

e <- envelope(sp, Kest, nsim = Simulations)
plot(e, main = Plot_name)

