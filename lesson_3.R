# 1. Cat class 
New.Cat <- function(weight,breed){
  output <- list(weight=weight, breed=breed)
  class(output) <- "Cat"
  return(output)
}

race <- function(first, second){
  if(!inherits(first, "Cat") | !inherits(second, "Cat"))
    stop("Cats! Cats! Cats!")
  if(first$weight < second$weight){
    print("First cat won!")
    return(first)
  }
  print("Second cat won!")
  return(second)
}

# 2. Point Class 
new.point <- function(x,y){
  output <- list(x=x,y=y)
  class(output) <- "point"
  return(output)
}

point_1 <- c(5,9)
point_2 <- c(3,14)

print.point <- function(x,...){
  cat("Point 1",x, "point 2",y)
}

# 3. Distance between two points 


