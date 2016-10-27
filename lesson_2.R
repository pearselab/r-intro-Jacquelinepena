# Printing out numbers from 20 to 10 
for(i in 20:10){ 
  print(i) 
  } 

# Printing out numbers from 20 to 10 that are even 
for(i in 20:10){
  if(i %% 2 == 0) print (i)
  }

# Function to calculate whether a number is prime 
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

# For loop for divisible # of 5 
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

# Population Growth 
# Assign parameters 
y <- population size
t <- Time 
a <- parameter1
b <- parameter2
popsize <- function(a,b,c,t){
y <- a*exp(-b*exp(-c*t))
return(y)
} 
print(popsize(14,35,1000,435))
print(popsize(1200,15,37,365))

