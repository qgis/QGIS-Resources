##Home Range Analysis=group
##load_vector_using_rgdal
##Layer=vector
##Percentage=number 50
##Field=Field Layer
##Home_ranges=Output vector
library(adehabitatHR)
Home_ranges<-mcp(Layer[,Field],percent=Percentage)
