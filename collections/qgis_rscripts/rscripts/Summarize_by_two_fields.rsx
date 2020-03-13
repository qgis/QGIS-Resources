##Layer=vector
##Numeric_field=Field Layer
##Factor1=Field Layer
##Factor2=Field Layer
##Folder=folder
##Summary_Table=output table
library(doBy)
library(plyr)
library(foreign)
setwd(Folder)
table1<-data.frame(num=Layer[[Numeric_field]],f1=Layer[[Factor1]],f2=Layer[[Factor2]])
output<-summaryBy(num~f1+f2, data=table1,FUN=c(sum,mean,var))
Summary_Table<-rename(output,c("num.sum"="Sum","num.mean"="Mean","num.var"="Variance","f1"=Factor1,"f2"=Factor2))
write.dbf(Summary_Table,file=paste("summarize_output", ".dbf", sep = ""))
