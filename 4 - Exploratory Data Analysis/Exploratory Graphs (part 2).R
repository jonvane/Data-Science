# Exploratory Data Analysis

# Exploratory Graphs (part 2)

# Multiple Boxplots

boxplot(pm25~region,data=avgpm25, col="red")

# Multiple Histograms

par(mfrow=c(2,1),mar=c(4,4,2,1))
hist(subset(avgpm25,region=="east")$pm25,col="green")
hist(subset(avgpm25,region=="west")$pm25,col="green")

# Scatterplot

with(avgpm25,plot(latitude,pm25))
abline(h=12,lwd=2,lty=2)

# Scatterplot - Using Color

with(avgpm25,plot(latitude,pm25,col=region))
abline(h=12,lwd=2,lty=2)

# Multiple Scatterplots

par(mfrow=c(1,2),mar=c(5,4,2,1))
with(subset(avgpm25,region=="west"),plot(latitude,pm25,main="West"))
with(subset(avgpm25,region=="east"),plot(latitude,pm25,main="East"))