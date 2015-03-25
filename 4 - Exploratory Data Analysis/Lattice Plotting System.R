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

## Latice Plotting System (part 2)

## Lattice Panel Functions

set.seed(10)
x <- rnorm(100)
f <- rep(0:1,each=50)
y <- x+f-f*x+rnorm(100,sd=0.5)
f <- factor(f,labels=c("Group 1","Group 2"))
xyplot(y~x|f,layout=c(2,1))  ## Plot with 2 panels

## Custom panel function

xyplot(y~x|f,panel=function(x,y,...){
  panel.xyplot(x,y,...) ## First call the default panel function for 'xyplot'
  panel.abline(h=median(y),lty=2) ## Add a horizontal line at the median
})

## Lattice Panel Functions: Regression line

## Custom panel function

xyplot(y~x|f,panel=function(x,y,...){
  panel.xyplot(x,y,...) ## First call default panel function
  panel.lmline(x,y,col=2) ## Overlay a simple linear regression line
})