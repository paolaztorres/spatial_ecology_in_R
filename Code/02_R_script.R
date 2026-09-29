# 1st graph plot 

matteo <- 5, 10, 20, 50, 80 # an array is a set of elements: this is the array of mammal species 
# Error: unexpected ',' in "matteo <- 5," but the "," is correct the problem is that R doesn't see the values as concatenated with this notation
Matteo <- c(5, 10, 20, 50, 80) #the space is only for better readability 

sum(5, 10)

elisa <- c(100, 80, 50, 20, 10) # an array of human deaths due to disease

plot(matteo, elisa) # automatically with a point character symbol, in R easch symbol has a code number
# changing the point character "pch"
plot(matteo, elisa, pch=19)

# character exaggeration "cex"
plot(matteo, elisa, pch=19, cex=2)

# in R the "up" arrow copy-pastes the former line automatically in the current line

# changing the color, in the case of plot, "col" (not "color")
plot(matteo, elisa, pch=19, cex=2, col="blue")

# changing the labels "xlab" and "ylab"
plot(matteo, elisa, pch=19, cex=2, col="blue", xlab="number of mammals", ylab="number of human deaths")

# increasing the axis dimention "cex.axis"
plot(matteo, elisa, pch=19, cex=2, col="blue", xlab="number of mammals", ylab="number of human deaths", cex.axis=2)

# long function!
plot(matteo, 
     elisa, 
     pch=19, 
     cex=4, 
     col="blue", 
     xlab="number of mammals", 
     ylab="number of human deaths",
     cex.axis=2,
     cex.lab=2)
