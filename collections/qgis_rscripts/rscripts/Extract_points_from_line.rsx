##Basic statistics=group
##Layer=vector line
##Line_number=number 1
##Output=output vector
##load_vector_using_rgdal
library(sp)
Coord<-Layer@lines[[Line_number]]@Lines[[1]]@coords
x<-as.numeric(Coord[,1])
y<-as.numeric(Coord[,2])
X<-cbind(x,y)
matrix<-as.matrix(X)
matrix<-SpatialPointsDataFrame(matrix, as.data.frame(Coord), proj4string=CRS(proj4string(Layer)))
Output=matrix
