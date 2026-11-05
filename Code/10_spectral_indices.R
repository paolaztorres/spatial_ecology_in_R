# Code to develop spectral images 

library(terra)
library(imageRy)
library(viridis)

# Listing the data
im.list()

# Importing the image of mato grosso in 1992
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m1992

# Layers of m1992
# layer 1 = NIR
# layer 2 = red
# layer 3 = green

# Exercise: put the NIR infrared in a im.plotRGB in the green component
# Make a multiframe with the NIR ontop of the red component and ontop of the green component 
im.multiframe(1,2) #pq ça marche pas les deux en même teeeeemps 
im.plotRGB(m1992, r=1, g=2, b=3)
im.plotRGB(m1992, r=2, g=1, b=3)
im.plotRGB(m1992, r=2, g=3, b=1)

# Calculating DVI in 1992
# NIR layer 1
# red layer 2

nir1992 <- m1992[[1]]
red1992 <- m1992[[2]]
dvi1992 = nir1992 - red1992
plot(dvi1992, col=rocket(100))

