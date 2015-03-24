# Exploratory Data Analysis

# Base Plotting System (part 1)

# Simple Base Graphics: Histogram

library(datasets)
hist(airquality$Ozone)  # Draw a new plot

# Simple Base Graphics: Scatterplot

library(datasets)
with(airquality,plot(Wind,Ozone))

# Simple Base Graphics: Boxplot

library(datasets)
airquality <- transform(airquality,Month=factor(Month))
boxplot(Ozone~Month,airquality,xlab="Month",ylab="Ozone (ppb)") # Ozone y axis / Month x axis

# Some Important Base Graphics Parameters

par("lty")
par("col")
par("pch")
par("bg")
par("mar")
par("mfrow")