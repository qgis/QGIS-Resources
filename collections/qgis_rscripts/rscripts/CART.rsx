##Basic statistics=group
##Layer=vector
##Field1=Field Layer
##showplots
##load_vector_using_rgdal
library(cluster)
library(rpart)
tree <- rpart(Layer[[Field1]]~., Layer, control=rpart.control(minsplit=2, minbucket=2, cp=0.001))
tree
plot(tree, main="Tree", branch=1, compress=T, margin=0.1)
text(tree, splits=T, fancy=T, use.n=F, pretty=0, all=T)
