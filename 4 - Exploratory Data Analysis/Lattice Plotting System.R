## Lattice Plotting System

## Part 1

library(lattice)

## Lattice Functions

xyplot
bwplot
histogram
stripplot
dotplot
splom
levelplot, contourplot

xyplot(y ~ x | f * g, data) ## The tilde is read as "is modeled as a function of."

## Simple Lattice Plot

library(lattice)
library(datasets)
## Simple scatterplot
xyplot(Ozone~Wind,data=airquality)

library(lattice)
library(datasets)
## Convert 'Month' to a factor variable
airquality <- transform(airquality,Month=factor(Month))
xyplot(Ozone~Wind | Month,data=airquality,layout=c(5,1))

## Lattice Behavior

p <- xyplot(Ozone~Wind,data=airquality) ## Nothing happens!
print(p) ## Plot appears

xyplot(Ozone~Wind,data=airquality) ## Auto-printing