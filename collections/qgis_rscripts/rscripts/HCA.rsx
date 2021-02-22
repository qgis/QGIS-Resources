##Basic statistics=group
##Layer=vector
##Field1=Field Layer
##Field2=Field Layer
##Field3=Field Layer
##Field4=Field Layer
##Field5=Field Layer
##method=selection ward;average;single;complete;ward
##showplots
library(cluster)
Data<-cbind(Layer[[Field1]],Layer[[Field2]],Layer[[Field3]],Layer[[Field4]],Layer[[Field5]])
methods<-c("ward","average","single","complete","ward")
methode<-methods[method+1]
methode
cahCSP <- agnes(Data, metric = "euclidean", method = methode)
sortedHeight <- sort(cahCSP$height, decreasing = TRUE)
par(mfrow=c(2,1))
plot(sortedHeight, main = "Distances between merging clusters (sorted on height)", type = "h", xlab = "Clusters", ylab = "Height")
dendroCSP <- as.dendrogram(cahCSP)
plot(dendroCSP, main = "Dendrogram", leaflab = "none", ylab = "Height")