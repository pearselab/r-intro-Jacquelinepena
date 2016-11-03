# Problems completed: 1-4 

# 1. 
y <- replicate(10,(rnorm(n=1,mean=runif(1,0,10),sd=runif(1,0,10))))

# 2. 
y <- rnorm(10,rnorm(1),runif(1,min=0,max=200))
my.summary <- function(x){
  cat("mean", "quantile", "min", "max", "\n",mean(x),quantile(x),min(x),max(x))
}

my.summary(y)

# 3. 
plants <- c("shrubs", "forbs", "grasses")
animals <- c("squirrel", "bird", "lizzard")
water <- c("river", "lake", "waterfall")
matrix <- matrix(NA, nrow=3,ncol=3)
ecosystem <- cbind(plants,animals,water)
ecosystem
categorical.summary <- function(x){
  plants <- length(x)
  animals <- length(x)
  water <- length(x)
  return(plants)
  return(animals)
  return(water)
}

categorical.summary(cbind(plants,animals,water))
categorical.summary(plants)
categorical.summary(animals)
categorical.summary(water)

# 4. 
overall.summary <- function(x){
  if(is.numeric(x)){
    return(my.summary)
  }else{
    return(categorical.summary)
  }
}
overall.summary(y)
overall.summary(cbind(plants,animals,water))
overall.summary(plants)

  

  

  


