##Point pattern analysis=group
##Layer=vector polygon
##Size=number 10
##Output= output vector
spatpoly = as(Layer, "Spatial")

pts=spsample(spatpoly,Size,type="random")
spdf=SpatialPointsDataFrame(pts, as.data.frame(pts))

Output=st_as_sf(spdf)
