##Basic statistics=group
##DEM_Layer=raster
# ##Start=point
##x_start=number 10.0
##y_start=number 60.0
# ##Destination=point
##x_destination=number 11.0
##y_destination=number 59.0
##Output= output vector
library(gdistance)
library(rgdal)

dem=raster(DEM_Layer)

heightDiff <-function(x)(x[2] - x[1])
hd <- transition(dem,heightDiff,8)#packages gdistance
slope <- geoCorrection(hd, scl=FALSE)#packages gdistance
adj <- adjacent(x=dem, cells=1:ncell(dem), pairs=TRUE, directions=8) #packages raster
speed <- slope
speed[adj] <- exp(-3.5 * abs(slope[adj])+0.05)
speed<-geoCorrection(speed) #packages gdistance
>print("--speed------------------------------------------------------")
>str(speed)

Ax=x_start
Ay=y_start
Bx=x_destination
By=y_destination

c1<-c(Ax, Ay)
#c1=Start
>print("--c1------------------------------------------------------")
>str(c1)

c2<-c(Bx, By)
#c2 = Destination
>print("---c2-----------------------------------------------")
>str(c2)

sPath1 <-shortestPath(speed, c1, c2,output="SpatialLines")
sldf=SpatialLinesDataFrame(sPath1, data=as.data.frame(c(1:length(sPath1))), match.ID = F)
Output=st_as_sf(sldf)

