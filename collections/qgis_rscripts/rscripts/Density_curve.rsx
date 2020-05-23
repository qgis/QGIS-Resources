##Basic statistics=group
##Layer=vector
##Field=Field Layer
##showplots
Density <- density(Layer[[Field]])
plot(Density$x, Density$y, type="b")
abline(v = mean(Layer[[Field]]), col = "red")
abline(v = mean(Layer[[Field]])+2*sd(Layer[[Field]]), col = "green")
abline(v = mean(Layer[[Field]])-2*sd(Layer[[Field]]), col = "green")

