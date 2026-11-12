> remove.packages("imageRy")
Elimination du package de ‘C:/Users/pzane/AppData/Local/R/win-library/4.5’
(car ‘lib’ n'est pas spécifié)

> library(remotes)
Message d'avis :
le package ‘remotes’ a été compilé avec la version R 4.5.3 

 > install_github("ducciorocchini/imageRy")
Downloading GitHub repo ducciorocchini/imageRy@HEAD
Error in utils::download.file(url, path, method = method, quiet = quiet,  : 
  le téléchargement de 'https://api.github.com/repos/ducciorocchini/imageRy/tarball/HEAD' a échoué


                              
                              C:\Users\pzane\Downloads
imageRy-main (1)
                              
remotes::install_local("C:/Users/pzane/Downloads/imageRy_main.zip")
library(imageRy)

im.ggplotRGB

# R code for classifying images thank to k-means:
# https://github.com/ducciorocchini/Spatial_Ecology_in_R_2026/blob/main/kmeans.md


# packages
# install.packages("ggplot2")
# install.packages("patchwork")
library(terra)
library(imageRy)
library(ggplot2)
library(patchwork)

# List of the data
im.list()

# Exercisee: import the Solar Orbiter image and assign it to the pbject called"sun"
sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

# Classifying the data
sunclass <- im.classify(sun, num_clusters=3)

# Seed
sunclass <- im.classify(sun, num_clusters=3, seed=42)

# Imprting data of Matogrosso
# Exercise: import the data of Mato Grosso and give them the names m1992 and m2006
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

# Doing the same with RGB images
im.ggplotRGB(m1992)


                              
