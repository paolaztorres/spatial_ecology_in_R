# Example code to download external data and upload them to R 

# Packages
library(terra)

# Linux 

# Mac users can also make 
setwd(")

# Windows users: \ in the path, the correct one is the slash! /
setwd("c://....../Downloads")

# Check your working directory 
getwd()

ozone <- rast("ozone_geos5_20260918_hires.jpg")
ozone

# Plot the image 
plotRGB(ozone, 1, 2, 3, stretch="lin")
