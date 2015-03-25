# Graphics Devices in R


# ways to launch the screen device

quartz() # on mac
windows() # on windows
x11() # on unix/linux

?Devices

# How Does a Plot Get Created?

library(datasets)
with(faithful,plot(eruptions,waiting)) ## Make plot appear on screen device
title(main="Old Faithful Geyser data") ## Annotate with a title

pdf(file="myplot.pdf") ## Open PDF device; create 'myplot.pdf' in my working directory
## Create plot and send to a file (no plot appears on screen)
with(faithful,plot(eruptions,waiting))
title(main="Old Faithful Geyser data") ## Annotate plot; still nothing on screen
dev.off() ## Close the PDF file device
## Now you can view the file 'myplot.pdf' on your computer