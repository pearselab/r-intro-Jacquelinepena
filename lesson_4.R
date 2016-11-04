# Problems completed: 1-5

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

# 5.  
DNA.sequence <- "ACGATATACGA"
codon <- c("ACG", "ATA", "ACG")
expand.grid(codon, codon1=(1:5),codon2=(1:5))
matrix <- matrix(codon,nrow=3,ncol=3)
matrix <- matrix(DNA.sequence,nrow=3,ncol=3)
codons <- sapply(seq(from=1, to=3),function(i))
input <- expand.grid(codon, codon1=(1:5),codon2=(1:5))
input
codons <- function(input){
  for(i in input)
    sapply(seq(from=1,to=x(input),3),function(i), sequence(input,i,i+2))
}

apply(input,1,sum)

input <- matrix(1:4, 2)
input
[,1] [,2]
[1,]    1    3
[2,]    2    4
apply(input, 1, sum)
[1] 4 6
apply(input, 2, sum)
[1] 3 7

# 6. 
DNA <-list("ACGATATACGA","GATGAAAT","GCTATGAAC","TGGAGGAATCCTA","CGTATAGCTCAA")

