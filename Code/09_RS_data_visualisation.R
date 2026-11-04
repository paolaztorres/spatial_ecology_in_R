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
b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=cividis(100))

# Exercise import the near infrared band
b8 <- im.import("sentinel.dolomites.b8.tif")

# Build a 4x4 multiframe and plot all of the bands with the default palette 
im.multiframe(2,2)
plot(b2)
plot(b3)
plot(b4)
plot(b8)

# multiframe and colorRamp Palette 
clb <- colorRampPalette(c("blue4", "blue1", "cadetblue1"))(100)
plot(b2, col=clb)

# Exercise: 
clg <- colorRampPalette(c("darkolivegreen", "chartreuse4", "chartreuse"))(100)
plot(b3, col=clg)

# band number 4: red band 

# Stack by the imageRy package:



# Exercise: starting from the stack called sentinel 
# terminar o programa com o prgrama do prof 

