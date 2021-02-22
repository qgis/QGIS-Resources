##Point pattern analysis=group
##Layer=vector point
##Output=output vector
library("spatstat")
library("maptools")

crs=st_crs(Layer)
spatpoints = as(Layer, "Spatial")

ripras=ripras(as(spatpoints,"ppp"))
polyg=as(ripras,"SpatialPolygons")
SPDF=SpatialPolygonsDataFrame(polyg, data.frame(1))

Output=st_set_crs(st_as_sf(SPDF), crs)
