# Code for vusualising remote sensing data

# Zenodo set: https://zenodo.org/records/15645465
# install_github("ducciorocchini/imageRy")
library(imageRy)
library(terra)
library(viridis)

# Checking the data 
im.list()

#Importing one layer of a satellite image which is called in the RS jargon "band"
b2 <- im.import("sentinel.dolomites.b2.tif")
plot(b2)

# Changing the palette thanks to the viridis package
plot(b2, col=inferno(100))

# Exercise: import the green band sentinel and plot it withe the mako legend 
b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3, col=mako(100))

# Make a multiframe with one image beside the other 
im.multiframe(1,2)
plot(b2, col=inferno(100))
plot(b3, col=mako(100))

# Exercise: import the red band (n°4)
b4 <- im.import("sentinel.dolomites.b4.tir")
plot(b4, col=cividis(100))

# Exercise import the near infrared band
