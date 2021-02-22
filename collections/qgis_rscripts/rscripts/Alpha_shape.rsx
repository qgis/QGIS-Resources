##Basic statistics=group
##Layer=vector point
##alpha=number 10
##Output=output vector
# ##load_vector_using_rgdal
library(alphahull)
library(maptools)
alpha_points = ashape(st_coordinates(Layer),alpha=alpha)
# alpha_points = ashape(coordinates(Layer),alpha=alpha)
if (nrow(alpha_points$edges) > 0)
{
l <- list()
for (i in 1:nrow(alpha_points$edges)) {
l[[i]] <-  Line(rbind(alpha_points$edges[i, 3:4], alpha_points$edges[i, 5:6]))
}
l <- list(Lines(l, as.character("1")))
sldf <- SpatialLinesDataFrame(SpatialLines(l), data.frame(name ="ashape edges"), match.ID = FALSE)
sf_alpha = st_as_sf(sldf)
Output = sf_alpha
} else {
print("Too small alpha to produce any edges")
Output = Layer
}