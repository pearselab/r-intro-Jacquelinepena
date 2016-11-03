# Problems completed: 1-7, 9-13,

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
plot(popsize, type='l', 
     col="blue" if else(popsize > a), col="red" if else(popsize > b)))
plot(popsize,type=1)

popgrowth <- function(a,b,c,t){
  for(i in popsize)
    popsize[i] <- y 
    if(y > a){
      color[i] <- "blue"
    } else {
      color[i] <- "black"
    }
  if(y > b){
    color[i] <- "red"
  } else {
    color[i] <- "black"
  }
}

popsize <- popgrowth(a=c(4,13,19,23),b=c(5,7,11,13),c=c(2,6,9,15),t=c(25,50,15,45))
plot(popsize, type='l')

# 8 I'm not sure if this makes sense. This one is difficult for me

popgrowth <- function(a,b,c,t){
  for(i in popsize)
    popsize[i] <- y 
  if(y > a & b){
    color[i] <- "purple"
  } else {
    color[i] <- "black"
  }
  if(y <- 3==4 | 2==2){
    color[i] <- "red"
  } else {
    color[i] <- "black"
  }
}


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
  printBox <- function(height, width){
    # Top of the Box
    for (i in 1:width){
      cat("jkl")
    }
    # New line
    cat("\n")
    cat("jkl      jkl\n")
    
    # Middle of the box
    for (x in height){
      cat("jkl hey  jkl")
    }

    cat("\n")
    cat("jkl      jkl\n")
    # Bottom of the Box
    for (i in 1:width){
      cat("jkl")
    }
  }
printBox(4,4)


# 12. Species abundance using a Poisson distribution 
# I think that the Bernoulli is a special case of a bionomial distribution (this is based on what I learned from Bayesian)
# nsites  <- number of sites 
# prob <- probability of species at nsties 
# ave <- average abundance 
abundance <- function(nsites,prob,ave){
  y1 <- rbinom(nsties,prob,ave)
  y2 <- rpois(nsties,ave)
  return(y1*y2)
}

# 13. I hope the too many y's are not confusing. 
species.abundance <- function(species,sites){
  abundmatrix <- matrix(NA, nrow=species, ncol=sites)
  for(i in 1:species){
  prob <- runif(10,min=0,max=1)
  lambda <- runif(1,min=1,max=50)
  y1 <- rbinom(sites,prob,1)
  y2 <- rpois(sites,lambda)
  y3 <- (y1*y2)
  abundmatrix[i,] <- y(y3)
  }
  return(y(abunmatrix))
}


