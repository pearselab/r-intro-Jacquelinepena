
# R Vocabulary 

cat - a function similar to concatenate (c) that uses defined functions 
cbind - takes a sequence of a vector, matrix or data-frame to combine them by columns or rows 
col - returns a list of integers that idicates their column number 
row - returns a list of intergers taht indciates their row labels 
cut - divides a range, x, into intervals and codes the values in x based on the interval they fall where the leftmost interval = level one and the next lefmost level = level two, etc...
diff - returns differences of lagged and iterated integars 
dim - shows or sets the dimension of an object 
rownames - shows or sets the row name of a matrix-like object 
colnames - shows or sets the column name of a matrix-like object 
names - function to get something or name of an object 
expand.grid - expands the dimensions of rows and/or columns 
eigen - computes eigenvalues and eigenvectors of double, integar, logical or complex matricesj
Eigenvalues are a special set of scalars associated with a linear system of equations 
"%*%" - multiplies 2 matrices, if they match and returns the product as a matrix 
lower.tri - returns a matrix of logicals (TRUE or FALSE) the same size of a matrix where the lower entries are TRUE 
upper.tri - returns a matrix of logicals (TRUE or FALSE) the same size of a matrix where the upper entries are TRUE 
gl - generate factors by specifying their level patterns 
identical - a safe and reliable way to check if two objects are equal and if the object is equal then it is TRUE and vice versa 
image - generic function to create a grid of colors or gray-scale rectangles corresponding to the values in z
used to show 3D or spatial data 
library - opens a package; it is like opening a book 
length - sets or gets the length of vectors, factors, and lists 
jitter - adds noise to a numeric vector; can be helpful to break ties 
ls - gives a vector of character strings by giving the names of the objects in the specified environment 
rm - removes an object objects
rm(list=()) - removes specified objects in a list 
mean - arithmetic mean 
median - compoutes sample median 
max - returns the maxima of the input values 
min - returns the minima of the input values 
paste - concatenae vectors after converting to character
read.csv & read.table - reads a file in a table format and creates a data frame from it (i.e. excel spreadsheet)
wirte.csv & write.table - creates a file of prints in its required argument, x, after converting it to a data frame 
rnorm - density distribution function that generates random values from a normal distribution 
dnorm - gives the density function 
qnorm - gives the quantile function 
pnorm - gives the density distribution function 
runif - generates random values from a uniform distribution 
rpois - generates random values from a poisson distribution with a lambda parameter 
rank - returns the sample ranks of values in a vector 
sort & order - sorts or orders a vector or factor into ascending or descending order 
outer - a function that applies a function on two arrays (i.e. x and y) where FUN is a function for the arugments x and y
  outer(X, Y, FUN = "*", ...)
  X %o% Y
rep - replicates values 
rowSums & colSums - finds the sums and means 
seq - generates sequences 
source - reads in R code from a file or a URL 
which - gives the TRUE indices of a logical object, allowing for array indices 
which.min & which.max - determines the location of the first minimum or maximum of a numeric or logical vector
setdiff, intersect & union - union of sets for intersection, difference, equality and membership of 2 vectors 
table - cross-classify factors to build contingency table of counts at each combo of factor levels 
with - evaluates an R expression in an environment of your data 

################################################
## Bonus exercises #############################
################################################

bonus.text <- "It was the best of times, it was the worst of times, it was the age of
wisdom, it was the age of foolishness, it was the epoch of belief, it
was the epoch of incredulity, it it was the season of Light, it was the
season of Darkness, it was the spring of hope, it was the winter of
despair, we had everything before us, we had nothing before us, we
were all going direct to Heaven, we were all going direct the other
way- in short, the period was so far like the present period, that
some of its noiosiest authorities insisted on its being received, for
good or for evil, in the superlative degree of comparison only."

# Trying different things 
x <- grepl("was",bonus.text)
x <- regexpr("x*the",bonus.text)
regex("\\w{n}",bonus.text)
strsplit(bonus.text, ",")
