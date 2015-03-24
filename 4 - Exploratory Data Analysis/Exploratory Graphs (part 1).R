# Exploratory Data Analysis

# Exploratory Graphs (part 1)

avgpm25 <- read.csv("~/data/PM25data/data/avgpm25.csv")
View(avgpm25)

# Five Number Summary

summary(avgpm25$pm25)

# Boxplot

boxplot(avgpm25$pm25, col="blue")

# Histogram

hist(avgpm25$pm25,col="green")
rug(avgpm25$pm25)

hist(avgpm25$pm25,col="green",breaks=100)
rug(avgpm25$pm25)

# Overlaying Features

boxplot(avgpm25$pm25,col="blue")
abline(h=12)

hist(avgpm25$pm25,col="green")
abline(v=12,lwd=2)
abline(v=median(avgpm25$pm25),col="magenta",lwd=4)

# Barplot

barplot(table(avgpm25$region),col="wheat",main="Number of Countries in Each Region")