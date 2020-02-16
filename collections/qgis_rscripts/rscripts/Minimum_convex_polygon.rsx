##Home Range Analysis=group
##Layer=vector
##Percentage=number 90
##Field=Field Layer
##Home_ranges=Output vector
library(adehabitatHR)

LayerXY = st_zm(Layer)
SpatialLayerXY = as(LayerXY, "Spatial")

HR<-mcp(SpatialLayerXY[,Field],percent=Percentage)

Home_ranges<-st_as_sf(HR)


