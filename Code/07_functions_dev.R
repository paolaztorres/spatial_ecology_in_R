# This code will develop user based functions 

summa <- function(num1,num2){
  z = num1 + num2
  return(z)
  }
summa(3, 5)

# Exercise: build a function to multiply (*) two numbers 
multi <- function(num1,num2){
  z = num1 * num2
  return(z)
  }
multi(3, 4)

# Exercise: develop your own function to make the sum of three numbers 
summa3 <- function(num1,num2,num3){
  z = num1 + num2 + num3
  return(z)
  }
summa3(3, 5, 4)

# A very annoying situation is related to the par function which is difficult to understand 
mf <- function(nx,ny){
  par(mfrow=c(nx,ny))
  }

mf(1,2)
plot(3,5)
plot(6,7)

# Putting default values inside functions 
mfdef <- function(nx=2, ny=1){ # default values 
  par(mfrow=c(nx,ny))
  }

mfdef()
plot(3,5)
plot(6,7)

mfdef(3,1)
plot(3,5)
plot(6,7)
plot(4,5)

# Using the operators if else to look if a number is positive or nevative 
amIpositive <- function(x){
  if(x>0){
    print("This number is positive, are you drunk?")
  }
else {
  print("This number is negative, idiot!")
  }
}
amIpositive(98)
amIpositive(-98)

# Considering all the potential cases 
amIpositive <- function(x){
  if(x>0){
    print("This number is positive, are you drunk?")
  }
else if(x<0) {
  print("This number is negative, idiot!")
  }
else {
  print("Zero is nor positive nor negative")
  }
}
amIpositive(0)

# Develop for loops 
# Creates a loop with 10 numbers 
loop <- function() { # function without arguments 
  for (i in 1:10) {
    }
  }

# Exercise: develop a loop which will print 13000 numbers from 1 to 13000
loop13000 <- function() { 
  for (i in 1:13000) {
    }
  }

# Loop with an operation inside 
loop2 <- function() { 
  for (i in 1:10) {
    multiply <- i * 4
    print(multiply)
    }
  }
loop2()

# Make a loop with power (^)
loop3 <- function() { 
  for (i in 1:10) {
    op <- i ^ 4
    print(op)
    }
  }
loop3()

