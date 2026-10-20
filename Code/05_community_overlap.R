# For an overview of a dataset

head(kerinci) # 1st 6 lines 
tail(kerinci) # last 6 lines 
summary(kerinci)

# Factor is a variable not composed of continuous numbers 

# Circular time 
circulartime <- kerinci$Time * 2 * pi

# Putting the circular time inside the dataset
kerinci$Timecirc <- kerinci$Time * 2 * pi

# Looking at the new column
head(kerinci)

# Subsetting the dataset with the selection of the species tiger 
tiger <- kerinci[kerinci$Sps=="tiger",] 
# [] for query and , to close it in the case of multiple columns

# Density plot of spreading of the tiger in the area in different times 
densityPlot(tiger$Timecirc)

# Alternative method : create the time variable from the tiger dataset and use it in the calculation
tigertime <- tiger$Timecirc
densityPlot(tigertime)

# Alternative method 2 : selecting a column will not necessarily require the name
tigertime <- tiger[4] # In this case we are not making a query just selecting one column 
densityPlot(tigertime)

# Exercise: selct all the rows of the kerici dataset with the species macaque
macaque <- kerinci[kerinci$Sps=="macaque",]
# Check the set 
head(macaque)

# Exercise: how to be sure that only macaque species has been selected 
summary(macaque) # being lazy is beautiful!

# Exercise: 

# Changing the graph
