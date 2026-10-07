# R code for population density

# Installing packages
install.packages("spatstat")

# Using the packages(s)
library(spatstat)

# Recall the data
bei # dataset inside spatstat package
# Looking at the points in space
plot(bei)
# Changing the pch
plot(bei, pch=15)
# Decreasing the dimention 
plot(bei, pch=15, cex=.5)

# Drivers, a dataset with 2 variablesinside bei
bei.extra
# Plotting variables 
plot(bei.extra)

# Subsetting a dataset: NEW CONCEPT!
# There are 2 different methods to make a subset:
# 1st: name of the variable + $ symbol
# 2nd: number of the layer + [] for a table, [[]] for map layers 

bei.extra #name of the datasel
elev # name of the variable in bei.extra that we want to keep
elevation <- bei.extra$elev
# output
elevation 
# Plot elevation 
plot(elevation)

# Subset by the number of the layer/variable
elevation2 <- bei.extra[[1]]
# In case bei.extra was a table: bei.extra[1]
# Plot the new object
plot(elevatio2)




