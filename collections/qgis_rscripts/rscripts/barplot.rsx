##Vector processing=group
##Bar plot=name
##showplots
##Layer=vector
##Field=Field Layer
barplot(table(Layer[[Field]]), main = paste("Bar plot of", Field), xlab = paste(Field))
