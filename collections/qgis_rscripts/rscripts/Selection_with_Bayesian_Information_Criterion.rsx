##Basic statistics=group
##Layer=vector
##Explained_field=Field Layer
##Field1=Field Layer
##Field2=Field Layer
##Field3=Field Layer
##Field4=Field Layer
##Field5=Field Layer
##Number_of_variables=number 5
##Method=selection exhaustive;backward;forward;seqrep
##showplots
##load_vector_using_rgdal
library(leaps)
X<-cbind(Layer[[Field1]],Layer[[Field2]],Layer[[Field3]],Layer[[Field4]],Layer[[Field5]])
colnames(X)<-c(Field1, Field2, Field3, Field4, Field5)
methods=c("exhaustive", "backward", "forward", "seqrep")
meth<-methods[Method + 1]
test1<-regsubsets(Layer[[Explained_field]]~X,data=Layer,really.big=T,nbest=1,nvmax=Number_of_variables, intercept=F,method=meth)
plot(test1, scale="bic")
summary(test1)
