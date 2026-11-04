# Code for vusualising remote sensing data

library(imageRy)
library(terra)

# Checking the data 
im.list()

#Importing one layer of a satellite image which is called in the RS jargon "band"
b2 <- im.import("sentinel.dolomites.b2.tif")
