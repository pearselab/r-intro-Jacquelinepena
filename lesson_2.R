# Problems completed: 1-6, 9, 10 

# 1. Printing out numbers from 20 to 10 
for(i in 20:10){ 
  print(i) 
  } 

# 2.Printing out numbers from 20 to 10 that are even 
for(i in 20:10){
  if(i %% 2 == 0) print (i)
  }

# 3. Function to calculate whether a number is prime 
# Google had to help me with this one 
prime <- function(num) {
    if (num == 2) {
      return(TRUE)
    } else if (any(num %% 2:(num-1) == 0)) {
      return(FALSE)
    } else { 
      return(TRUE)
    }
  }

# 4. For loop for divisible # of 5 
div5 <- function(num) {
  if(num %% 5 == 0) {
    return(TRUE)
  }else{
    return(FALSE)
  }
}

for(i in 1:20){
  if(i==5){
    print("Job: Number")
  }
  else if(div5(i)){
    print("Good: Number")
  }else if(prime(i)){
    print("Job: Number")
  }
}

# 5. Population Growth 
#y <- population growth
t <- Time 
a <- parameter1
b <- parameter2

popgrowth <- function(a,b,c,t){
y <- a*(exp(-b*(exp(-c*t))))
return(y)
} 
# This does not seem right. The answer matches to a. Should I be concerned?
popsize <- popgrowth(a=35,b=57,c=13,t=50)
print(popsize(35,57,65,147))
#[1] 88
popsize <- popgrowth(a=23,b=13,c=9,t=50)
print(popsize)
#[1] 23

# 6. Plotting population growth 
popsize <- popgrowth(a=c(4,13,19,23),b=c(5,7,11,13),c=c(2,6,9,15),t=c(25,50,15,45))
print(popsize)
#[1]  4 13 19 23
plot(popsize, type='l')


# 7. Plotting population growth with y > a in blue and y > b in red
plot(popsize, type='l', col=ifelse(popsize > a, 'blue', ifelse(popsize > b, 'red')))

# 9. 3x5 box 
printBox <- function(height, width){
  # Top of the Box
  for (i in 1:(width)) {
    cat("*")
  }
  # New line
  cat("\n")
  
  # Middle of the box
  for (x in 1:(height-1)) {
    cat("*   ")
  }
  cat("\n")

  # Bottom of the Box
  for (i in 1:width) {
    cat("*")
  }
}

printBox(3,5)
*****
*   *   
*****
  
# 10. Box with text 
  printBox <- function(height, width){
    # Top of the Box
    for (i in 1:width) {
      cat("*")
    }
    # New line
    cat("\n")
    cat("*           *\n")
    
    # Middle of the box
    for (x in 1:(height-4)) {
      cat("* some text *")
    }
    cat("\n")
    cat("*           *\n")
    # Bottom of the Box
    for (i in 1:width) {
      cat("*")
    }
  }
printBox(5,13)

*************
*           *
* some text *
*           *
*************
  
# 11. Box with arbitrary text 
  # I am not sure if this works. It seems that the for loops work
  printBox <- function(height,width){
    # Top of the Box
    for (i in dim(width)){
      cat("jkl")
    }
    # New line
    cat("\n")
    
    # Middle of the box
    for (x in 1:dim(height)){
      cat("j hey j")
    }

    cat("\n")
    # Bottom of the Box
    for (i in dim(width)){
      cat("jkl")
    }
  }
printBox(3,9)
# Errors I'm getting 
Error in 1:dim(height) : argument of length 0 #I'm not sure what this means
> printBox(dim(3,9))
Error in printBox(dim(3, 9)) : 
  argument "width" is missing, with no default

