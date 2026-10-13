# Script for modelling the dispersion of individuals of a population 

# New packages to be installed
# install.packages("terra")
# install.packages("sdm")

# Check the packages 
library(terra)
library(sdm)

# path to file
path <- system.file("external/species.shp", package="sdm")

# Import the vector data
rana <- vect(path)
rana 
plot(rana)

# looking at coordinates 
coordinates <- geom(rana)
coordinates # appel de variable pour voir ce qu'elle contient

# SUBSET YOUR DATA!!!
# subset the dataset extracting presences 
presence <- rana[rana$Occurrence == 1] # take care of the capital letter!
# maens: search for al occurrences which are equal to 1, it's opposite is !=
presence 

# Exercise: select and asign absences 
absence <- rana[rana$Occurrence != 1]
# or absence <- rana[rana$Occurrence == 0]

# plot the presences 
plot(presence)
plot(absence)

# Exrcise: plot presences and absences with different colors in the same plot 
plot(presence, col="blue", cex=2.5)
points(absence, col="violet", cex=2.5)

