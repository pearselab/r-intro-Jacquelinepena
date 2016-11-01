# Problmes completed: 1-5

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

point1 <- new.point(x=5,y=9)
point2 <- new.point(x=10,y=14)


# 3. Distance between two points 

point.distance <- function(point1,point2,...){
  if(!inherits(point1, "point") | !inherits(point1, "point"))
    stop("Points!")
  output <- (sqrt(point2$x-point1$x)^2+(point2$y-point1$y)^2)
  return(output)
}

point1 <- point.distance(x=5,y=9)
point2 <- point.distance(x=10,y=14)

point.distance(point1,point2)

# 4. Line class 

new.line <- function(point1,point2,...){
  output <- list(point1=point1,point2=point2)
  class(output) <- "line"
  return(output)
}

line.distance <- function(point1,point2,...){
  if(! inherits(point1, "line1") | !inherits(point2, "line2"))
  stop("Lines!")
  output <- line(point1$x$y,point2$x$y)
  return(output)
}

point1 <- new.point(x=5,y=9)
point2 <- new.point(x=10,y=14)
point3 <- new.point(x=3,y=4)
point4 <- new.point(x=11,y=15)

line1 <- new.line(point1,point2)
line2 <- new.line(point3,point4)

# 5. Polygon Class 

new.polygon <- function(line1,line2,...){
  output <- list(line1=line1,line2=line2)
  class(output)
}

create.polygon <- function(line1,line2,...){
  it(! inherits(line1, "line1") | ! inherits(line2, "line2"))
  stop("Lines!")
  output <- polygon(line1$point1$point2,line2$point3$point4)
  return(output)
}

Polygon1 <- new.polygon(line1,line2,line3,line4)

# 6. Plot methods for point and line objects 



