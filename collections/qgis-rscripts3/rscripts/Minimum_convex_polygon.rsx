##Home Range Analysis=group
##Layer=vector
##Percentage=number 90
##Field=Field Layer
##Home_ranges=Output vector
library(adehabitatHR)

SpatialLayer = as(Layer, "Spatial")
HR<-mcp(SpatialLayer[,Field],percent=Percentage)
Home_ranges<-st_as_sf(HR)


