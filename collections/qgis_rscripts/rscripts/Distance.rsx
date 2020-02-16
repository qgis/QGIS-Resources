##Basic statistics=group
##Input_Point_Layer=vector
##Line_Layer=vector
##ID_Field=Field Input_Point_Layer
##Nearest=output vector
library(geosphere)
library(rgeos)

# Remove the z and m dimensions
PointsXY=st_zm(Input_Point_Layer)
LinesXY=st_zm(Line_Layer)
# Change format
SpatPointsXY=as(PointsXY, "Spatial")
SpatLinesXY=as(LinesXY, "Spatial")

line=gLineMerge(SpatLinesXY, byid=FALSE, id = NULL)
x=coordinates(SpatPointsXY)
X=dist2Line(x, line, distfun=distHaversine)
matrix=as.matrix(X[,2:3])
X=cbind(X, as.data.frame(SpatPointsXY[[ID_Field]]))
result=SpatialPointsDataFrame(matrix, as.data.frame(X, row.names=NULL))
Nearest=st_set_crs(st_as_sf(result),st_crs(Input_Point_Layer))
