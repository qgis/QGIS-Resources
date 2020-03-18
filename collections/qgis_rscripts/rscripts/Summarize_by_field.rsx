##Layer=vector
##Numeric_field=Field Layer
##Factor=Field Layer
##Folder=folder
##Summary_table=output table
library(doBy)
library(plyr)
library(foreign)
setwd(Folder)
table1<-data.frame(num=Layer[[Numeric_field]],f=Layer[[Factor]])
output<-summaryBy(num~f, data=table1,FUN=c(sum,mean,var))
Summary_table<-rename(output,c("num.sum"="Sum","num.mean"="Mean","num.var"="Variance","f"=Factor))
write.dbf(Summary_table,file=paste("summarize_output", ".dbf", sep = ""))

