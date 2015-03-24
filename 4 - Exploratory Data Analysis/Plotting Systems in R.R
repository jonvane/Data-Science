# Exploratory Data Analysis

# Plotting Systems in R

# The Base Plotting System
# Base Plot

library(datasets)
data(cars)
with(cars,plot(speed,dist))

# The Lattice System
# Lattice Plot

library(lattice)
state <- data.frame(state.x77,region=state.region)
xyplot(Life.Exp~Income | region, data=state,layout=c(4,1))

# The ggplot2 System

library(ggplot2)
data(mpg)
qplot(displ,hwy,data=mpg)