# Problmes completed: 1-9

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
point3 <- new.point(x=3,y=4)
point4 <- new.point(x=11,y=15)
point5 <- new.point(x=2,y=3)
point6 <- new.point(x=9,y=6)


# 3. Distance between two points 
point.distance <- function(point1,point2){
  if(!inherits(point1, "point") | !inherits(point1, "point"))
    stop("Points!")
  output <- (sqrt(point2$x-point1$x)^2+(point2$y-point1$y)^2)
  return(output)
}

point1 <- point.distance(x=5,y=9)
point2 <- point.distance(x=10,y=14)

point.distance(point1,point2)

# 4. Line class 
new.line <- function(point1,point2){
  output <- list(point1,point2)
  class(output) <- "line"
  return(output)
}

line1 <- new.line(point1,point2)
line2 <- new.line(point3,point4)
line3 <- new.line(point5,point6)

plot(point1,point2)

# 5. Polygon Class (Jenessa and I worked on problem 5-7 together which is why our code looks similar)
new.polygon <- function(points){
  output <- vector("list", legnth(points))
  for(i in 1:(lenght(points)-1)){
  output[[i]] <- new.line(points[[i]],points[[i+1]])
  print(i)
  }
  class(output) <- "polygon"
  output[[length(points)]] <- new.line(points[[length(points)]],points[[1]])
  return(output)
}
create.polygon <- list(point1,point2,point3)
polygon <- new.polygon(create.polygon)
polygon 

# 6. Plot methods for point and line objects 
# Plot Class or my points 
point.plot <- function(point){
  plot(point$x,point$y,xlim=c(0,20),ylim=c(0,20))
}

line.plot <- function(line){
  if(! inherits(point1,"point") | ! inherits(point2, "point")){
  stop("Lots of points!")
  return(output)
  }
  segments(line[[1]]$x, line[[1]]$y, line[[2]]$x, line[[2]]$y)
}

line.plot(line1,line2,line3)

# 7. Polygon plot 
polygon.plot <- function(polygon){
  for(i in 1:(length(polygon))){
    print(i)
    line.plot(polygon[[i]])
    print(i)
  }
}

polygon.plot(polygon)

# 8. 
#Create a canvas object that the add function can add point, line, circle, and polygon objects to. 
#Write plot and print methods for this class.

canvas <- function(points,lines,circles){
  output <- list(points=points,lines=lines,circles=circles)
  class(output) <- "lines, points, & circles...Oh my!"
  return(output)
}

new.canvas <- function(points,lines,circles){
  plot(point1$x,point1$y,point2$x,point2$y,xlim=c(0,20),ylim=c(0,20))
  segments(line[[1]]$x, line[[1]]$y, line[[2]]$x, line[[2]]$y)
  circle <- seq(0,2*pi,length=100)
  coords <- circle(rbind(10+sin(circle)*2, 20+cos(circle)*2))
  plot(coords)
}  

plot(canvas)
# 9. 
# Implement a circle object that takes a point and a radius and stores a circle.
# Don't make a circle out of lines! 
circle <- seq(0,5*pi,length=50)  
coords <- circle(rbind(10+sin(circle)*2,30+cos(circle)*2))
plot(coords)

# 10 This one needs work...
area.polygon <- function(polygon){
  if(! inherits(polygon, "polygon"))
    stop("crazy polygon")
  output <- (0.5*(line1$point$1,line1$point2,line2$point3,line2$point4)*2*(10*sqrt(3)))
  return(output)
}

    area = 1/2 x perimeter x apothem (10*sqrt(3))

  point.distance <- function(point1,point2){
    if(!inherits(point1, "point") | !inherits(point1, "point"))
      stop("Points!")
    output <- (sqrt(point2$x-point1$x)^2+(point2$y-point1$y)^2)
    return(output)
  }
  
  point1 <- point.distance(x=5,y=9)
  point2 <- point.distance(x=10,y=14)
  
  point.distance(point1,point2)
  
   rm(list=ls())

