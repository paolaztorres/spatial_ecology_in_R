# R code for 

# packages 
library(terra)
library(imageRy)

# List of the data
im.list()

# Exercise: import the Solar Orbiter image and assign it to the object called "sun" 
sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")
plot(sun)

# Classify the data 
sunclass <- im.classify(sun, num_clusters=3)

# Seed 
sunclass <- im.classify(sun, num_clusters=3, seed=42)
