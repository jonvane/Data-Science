# Graphics Devices in R

# Part 1

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

# Part 2

# Multiple Open Graphics Devices

dev.cur() ## currently active graphics device
dev.set() ## change the active graphics device - number goes in between braces and is associated with the graphics device you want to switch to

# Copying Plots

dev.copy ## copy a plot from one device to another
dev.copy2pdf ## copy a plot to a PDF file

library(datasets)
with(faithful,plot(eruptions,waiting))  ## Create plot on screen device
title(main="Old Faithful Geyser data") ## Add a main title
dev.copy(png,file="geyserplot.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!

dev.copy2pdf(file="myplot2.pdf")
dev.off()