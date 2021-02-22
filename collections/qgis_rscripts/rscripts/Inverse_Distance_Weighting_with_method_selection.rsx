##Basic statistics=group
##Input_point_layer=vector point
##Raster_layer=raster
##distance.max=number 200
##distance.min=number 100
##power=number 1
##weighting=number 1
##nugget=number 0.1
##range=number 1
##sigma=number 1
##mu=number 0.3
##a=number 1
##b=number 1
##output=output vector
##load_vector_using_rgdal
library(raster)
library(sp)
p1=coordinates(Input_point_layer)
result<-cbind()
for (j in 1:dim(p1)[1]){
point<-p1[j,]
r <- readGDAL(Raster_layer@file@name)
dist <- distanceFromPoints(r, point)
position<-which(dist@data@values<distance.max)
dist_f<-dist@data@values[position]
z<-as.numeric(unlist(r@data))
a=0
b=0
if (weighting==0){
for(i in 1:length(position)){
if (dist_f[i]>distance.min){
if (!is.na(z[position[i]])){
if (z[position[i]]!=0){
a=a+z[position[i]]*(1/dist_f[i]^power)
b=b+(1/dist_f[i]^power)
}
}
}
}
}
if (weighting==1){
for(i in 1:length(position)){
if (dist_f[i]>distance.min){
if (!is.na(z[position[i]])){
if (z[position[i]]!=0){
a=a+z[position[i]]*(1/(1+dist_f[i]^power))
b=b+(1/(1+dist_f[i]^power))
}
}
}
}
}
if (weighting==2){
for(i in 1:length(position)){
if (dist_f[i]>distance.min){
if (!is.na(z[position[i]])){
if (z[position[i]]!=0){
a=a+z[position[i]]*((1-nugget)/(1+(range/dist_f[i])^2))
b=b+((1-nugget)/(1+(range/dist_f[i])^2))
}
}
}
}
}
if (weighting==3){
for(i in 1:length(position)){
if (dist_f[i]>distance.min){
if (!is.na(z[position[i]])){
if (z[position[i]]!=0){
a=a+z[position[i]]*(1-nugget)*exp(-range/dist_f[i])
b=b+(1-nugget)*exp(-range/dist_f[i])
}
}
}
}
}
if (weighting==4){
for(i in 1:length(position)){
if (dist_f[i]>distance.min){
if (!is.na(z[position[i]])){
if (z[position[i]]!=0){
a=a+z[position[i]]*(1-nugget)*(1-1.5*(range/dist_f[i])+0.5*(range/dist_f[i])^3)
b=b+(1-nugget)*(1-1.5*(range/dist_f[i])+0.5*(range/dist_f[i])^3)
}
}
}
}
}
if (weighting==5){
for(i in 1:length(position)){
if (dist_f[i]>distance.min){
if (!is.na(z[position[i]])){
if (z[position[i]]!=0){
integrand <- function(x) {(1/(sigma*sqrt(2*pi)))*exp(-0.5*((log(x)-mu)/sigma)^2)}
int<-integrate(integrand, lower = 0, upper =dist_f[i])
C<-1-int$value
a=a+z[position[i]]*C
b=b+C
}
}
}
}
}
if (weighting==6){
for(i in 1:length(position)){
if (dist_f[i]>distance.min){
if (!is.na(z[position[i]])){
if (z[position[i]]!=0){
alpha<-a*dist_f[i]+b
C<-1/(1+exp(-alpha))
a=a+z[position[i]]*C
b=b+C
}
}
}
}
}
result<-rbind(result,cbind(as.numeric(point[1]), as.numeric(point[2]),a/b))
colnames(result)<-c("X","Y","attribut")
}
if (weighting==7){
result<-cbind()
for (j in 1:dim(p1)[1]){
point<-p1[j,]
r <- readGDAL(Raster_layer@file@name)
dist <- distanceFromPoints(r, point)
position<-which(dist@data@values<distance.max)
dist_f<-dist@data@values[position]
z<-as.numeric(unlist(r@data))
a0=a1=a2=a3=a4=a5=a6=0
b0=b1=b2=b3=b4=b5=b6=0
for(i in 1:length(position)){
if (dist_f[i]>distance.min){
if (!is.na(z[position[i]])){
if (z[position[i]]!=0){
a0=a0+z[position[i]]*(1/dist_f[i]^power)
b0=b0+(1/dist_f[i]^power)
a1=a1+z[position[i]]*(1/(1+dist_f[i]^power))
b1=b1+(1/(1+dist_f[i]^power))
a2=a2+z[position[i]]*((1-nugget)/(1+(range/dist_f[i])^2))
b2=b2+((1-nugget)/(1+(range/dist_f[i])^2))
a3=a3+z[position[i]]*(1-nugget)*exp(-range/dist_f[i])
b3=b3+(1-nugget)*exp(-range/dist_f[i])
a4=a4+z[position[i]]*(1-nugget)*(1-1.5*(range/dist_f[i])+0.5*(range/dist_f[i])^3)
b4=b4+(1-nugget)*(1-1.5*(range/dist_f[i])+0.5*(range/dist_f[i])^3)
integrand <- function(x) {(1/(sigma*sqrt(2*pi)))*exp(-0.5*((log(x)-mu)/sigma)^2)}
int<-integrate(integrand, lower = 0, upper =dist_f[i])
C<-1-int$value
a5=a5+z[position[i]]*C
b5=b5+C
alpha<-a*dist_f[i]+b
C<-1/(1+exp(-alpha))
a6=a6+z[position[i]]*C
b6=b6+C
}
}
}
}
result<-rbind(result,cbind(as.numeric(point[1]), as.numeric(point[2]),a0/b0,a1/b1,a2/b2,a3/b3,a4/b4,a5/b5,a6/b6))
}
colnames(result)<-c("X","Y","1/d","1/(d+1)","C_ratio","C_exp","C_sph","C_lit","logit")
}
matrix<-cbind(result[,1],result[,2])
matrix<-as.matrix(matrix)
result<-SpatialPointsDataFrame(matrix, as.data.frame(result, row.names=NULL))
proj4string(Input_point_layer)->crs
proj4string(result)<-crs
output<-result
