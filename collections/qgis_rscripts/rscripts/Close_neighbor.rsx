##Basic statistics=group
##Layer=vector point
##Name_field=Field Layer
##Distance=number 10
##Output=output vector
library(spdep)
library(sp)
coordi <- as.matrix(st_coordinates(Layer))
tram_nb <- dnearneigh(coordi, d1 = 0, d2 = Distance, row.names=Layer[[Name_field]])
tram_nb <- as.data.frame(card(tram_nb))
tram <- cbind(as.vector(Layer[[Name_field]]), tram_nb)
Coord <- cbind()
n <- length(Layer[[Name_field]])
for(i in 1:n){
  if (tram[i,2] != 0 ){
    Coord <-rbind(Coord, cbind(coordi[i,1], coordi[i,2], as.vector(Layer[[Name_field]])[i]))
  }
}
x <- as.numeric(Coord[,1])
y <- as.numeric(Coord[,2])
X <- cbind(x,y)
matrix <- as.matrix(X)
matrix <- SpatialPointsDataFrame(matrix, as.data.frame(Coord))
Output = st_set_crs(st_as_sf(matrix), st_crs(Layer))
