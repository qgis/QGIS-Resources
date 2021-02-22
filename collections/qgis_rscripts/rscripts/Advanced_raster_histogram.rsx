##Raster_layer=raster
##Raster processing=group
##Dens_or_Hist=string Hist
##showplots
library(rpanel)
library(rasterVis)
str <- Dens_or_Hist
if (str !='Dens' & str != 'Hist'){
  rp.messagebox('you must enter "Dens" or "Hist"', title = 'oops!')
} else {
  if (nbands(Raster_layer) == 1) {
    Raster_layer <- as.matrix(Raster_layer)
    Raster_layer <- raster(Raster_layer)
  }
  if (str == 'Dens') {
    densityplot(Raster_layer)
  } else if (str == 'Hist') {
    histogram(Raster_layer)
  }
}
