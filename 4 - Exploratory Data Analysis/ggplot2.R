## ggplot2 (part 1)

library(ggplot2)

## ggplot2 (part 2)

str(mpg)

## ggplot2 "Hello, world!"

library(ggplot2)
qplot(displ,hwy,data=mpg)

## Modifying aesthetics

qplot(displ,hwy,data=mpg,color=drv)

## Adding a geom

qplot(displ,hwy,data=mpg,geom=c("point","smooth"))

## Histograms

qplot(hwy,data=mpg,fill=drv)


## Facets

qplot(displ,hwy,data=mpg,facets=.~drv)
qplot(hwy,data=mpg,facets=drv~.,binwidth=2)

## Example: MAACS

load("maacs.Rda")
str(maacs)

## Histogram of eNO (exhaled nitric oxide)

qplot(log(eno),data=maacs)

## Histogram by Group

qplot(log(eno),data=maacs,fill=mopos)

## Density Smooth

qplot(log(eno),data=maacs,geom="density")
qplot(log(eno),data=maacs,geom="density",color=mopos)

## Scatterplots: eNO vs. PM2.5

qplot(log(pm25),log(eno),data=maacs)
qplot(log(pm25),log(eno),data=maacs,shape=mopos)
qplot(log(pm25),log(eno),data=maacs,color=mopos)

qplot(log(pm25),log(eno),data=maacs,color=mopos,geom=c("point","smooth"),method="lm")

qplot(log(pm25),log(eno),data=maacs,geom=c("point","smooth"),method="lm",facets=.~mopos)