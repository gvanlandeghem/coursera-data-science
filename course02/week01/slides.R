# error messages
libary(datasets)
data(airquality)
cor(airquality)

# vector function
a <- vector(mode="integer", 2)
class(a)

# printing values
x <- 1
print(x)
# autoprint
x

msg <- "hello"
msg

x <- 1:20
x

# vector creation with c() function
x <- c(0.6, 0.6)       # numeric
x <- c(TRUE, FALSE)    # logical
x <- c(T, F)           # logical
x <- c("a", "b", "c")  # character
x <- c 9:29            # integer
x <- c(1+0i, 2+4i)     # complex

x
class(x)

# mixing objects
y <- c(1.7, "a")   # character
y <- c(TRUE, 2)    # numeric
y <- c("a", TRUE)  # character

class(y)

# explicit coercion
x <- 0:6
class(x)

v <- as.numeric(x)
v <- as.logical(x)
v <- as.character(x)
class(v)

# NAs
x <- c("a", "b", "c")
as.numeric(x)

# Matrices are vectors with a dimension attribute
# the dimension is a vector of length 2(nrow, ncol)
m <- matrix(nrow=2, ncol=3)
m
# [,1] [,2] [,3]
# [1,]   NA   NA   NA
# [2,]   NA   NA   NA
dim(m)
#[1] 2 3
attributes(m)
# $dim
# [1] 2 

m <- matrix(1:6, nrow=2, ncol=3)
m
# [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

m <- 1:10
dim(m) <- c(2,5)
m

x <- 1:3
y <- 10:12

# column binding
cbind(x, y)
#      x  y
# [1,] 1 10
# [2,] 2 11
# [3,] 3 12

# row binding
rbind(x, y)
#    [,1] [,2] [,3]
# x    1    2    3
# y   10   11   12

x <- list(1, "a", TRUE, 1+4i)
class(x)
x

# [[1]]
# [1] 1

# [[2]]
# [1] "a"

# [[3]]
# [1] TRUE

# [[4]]
# [1] 1+4i


# Factors to represent categorical data
# treated specially by functions like lm() and glm()
# e.g. Male and Female
# is an integer vector
x <- factor(c("yes", "yes", "no", "yes", "no"))
x
# [1] yes yes no  yes no 
# Levels: no yes

table(x)
# x
# no yes 
# 2   3 

unclass(x)
# [1] 2 2 1 2 1
# attr(,"levels")
# [1] "no"  "yes"

x <- factor(c("yes", "yes", "no", "yes", "no"), levels= c("yes", "no"))
x
table(x)
# x
# yes  no 
#   3   2 

# Missing values
x <- c(1, 2, NA, 10, 3)
is.na(x)
is.nan(x)

# NaN is also NA but NA is not an NaN
x <- c(1, 2, NaN, NA, 4)
is.na(x)
is.nan(x)

# data frames are used to store tabular data
# unlike matrices they can store different kinds of classes
# saved as list
# attributes 
#  row.names
#  read.table() or read.csv()
#  converted to matrix by calling data.matrix()
x <- data.frame(foo=1:4, bar= c(T, T, F, F))
x
#    foo   bar
# 1   1  TRUE
# 2   2  TRUE
# 3   3 FALSE
# 4   4 FALSE
nrow(x)
# [1] 4
ncol(x)
# [1] 2

# Names
x <- 1:3
names(x) <- c("foo", "bar", "norf")
x
# foo  bar norf 
# 1    2    3 

# lists can also have names
x <- list(a =1, b=2, c=3)
x
# $a
# [1] 1

# $b
# [1] 2

# $c
# [1] 3

# matrices can have names
m <- matrix(1:4, nrow=2, ncol=2)
dimnames(m) 
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m
#   c d
# a 1 3
# b 2 4

# subsetting
# [  always returns an object of the same class
# [[ single element of list or data frame
# $ to extract elements from list or data frame
x <- c("a", "b", "c", "c", "d", "a")
x[1]
# [1] "a"
x[2]
# [1] "b"
x[1:4]
# [1] "a" "b" "c" "c"
x[x > "a"]
[1] "b" "c" "c" "d"
u <-  x > "a"
u
# [1] FALSE  TRUE  TRUE  TRUE  TRUE FALSE
x[u]

# subsetting a matrix
x <- matrix(1:6, 2, 3)
x[1, 2]
# [1] 3
x[2, 1]
# [1] 2

# missing indices
x[1, ]
# [1] 1 3 5
x[, 2]
# [1] 3 4

# subsetting a matrix
x <- matric(1:6, 2, 3)

# returns a vector
x[1, 2]
# [1] 3
class(x[1,2])
# [1] "integer"

# returns a matrix
class(x[1,2, drop = FALSE])
# [1] "matrix"

x <- matrix(1:6, 2, 3)
x[1,]
# [1] 1 3 5
x[1, , drop = FALSE]
# [,1] [,2] [,3]
# [1,]    1    3    5

# subsetting lists
x <- list(foo = 1:4, bar = 0.6)
# returns a list
x[1]
# $foo
# [1] 1 2 3 4
class(x[1])
# [1] "list"

x[[1]]
# [1] 1 2 3 4
class(x[[1]])
# 


x$bar
# [1] 0.6
x[["bar"]]
# [1] 0.6
x["bar"]
# [1] 0.6

# multiple elements in a list
x <- list(foo = 1:4, bar = 0.6, baz = "hello")
x[c(1,3)]
# $foo
# [1] 1 2 3 4

# $baz
# [1] "hello"

x <- list(foo = 1:4, bar = 0.6, baz = "hello")

name <- "foo"
x[[name]]
# [1] 1 2 3 4

x$name
# NULL

x <- list(a = list(10, 12, 14), b= c(3.4, 2.81))
x[[c(1,3)]]
# [1] 14
x[[1]][[3]]
# [1] 14
x[[c(2,1)]]
# [1] 3.4

# partial matching
x <- list(aardvark = 1:5)
x$a
# [1] 1 2 3 4 5
x[["a"]]
# NULL
x[["a", exact="FALSE"]]
# [1] 1 2 3 4 5

# Removing NA values
x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
good
# [1]  TRUE  TRUE FALSE  TRUE FALSE  TRUE
x[good]
# [1] 1 2 4 5
y[good]
# [1] "a" "b" "d" "f"

library(datasets)
data(airquality)
airquality[1:6,]
#    Ozone Solar.R Wind Temp Month Day
# 1    41     190  7.4   67     5   1
# 2    36     118  8.0   72     5   2
# 3    12     149 12.6   74     5   3
# 4    18     313 11.5   62     5   4
# 5    NA      NA 14.3   56     5   5
# 6    28      NA 14.9   66     5   6

good <- complete.cases(airquality)
airquality[good, ][1:6,]
#   Ozone Solar.R Wind Temp Month Day
# 1    41     190  7.4   67     5   1
# 2    36     118  8.0   72     5   2
# 3    12     149 12.6   74     5   3
# 4    18     313 11.5   62     5   4
# 7    23     299  8.6   65     5   7
# 8    19      99 13.8   59     5   8

# reading data
# read.table, read.csv for reading tabular data
# return data.frame
#
# readLines for reading lines of a text file
#
# source for reading R code files
# dget for reading in R code files
# load for reading in saved workspaces
# unserialize for reading single R objects in binary form
# 
# read.table
#  file, header(flag), sep(column sep), colClasses(character vector)
#  nrows(number of rows), comment.char (comment char), skip (first lines to skip)
#  stringsAsFactors (character variables coded as factors?)

# set comment.char=""
# use colClasses argument, read.table can run much faster

data <- read.table("week01/foo.txt")
data <- read.csv("week01/foo.txt")
data
#   nbrline amount amount2
# 1       1    100    1000
# 2       1    200    2000
attributes(data)

# dumping and dputing preserve metadata
y <- data.frame(a = 1, b = "a")
dput(y)
# structure(list(a = 1, b = structure(1L, .Label = "a", class = "factor")), .Names = c("a", 
# "b"), row.names = c(NA, -1L), class = "data.frame")
dput(y, file ="week01/y.R")

new.y <- dget("week01/y.R")
new.y
#     a b
#   1 1 a

x <- "foo"
y <- data.frame(a = 1, b="a")
dump(c("x", "y"), file="week01/data.R")
rm(x,y)
source("week01/data.R")
y
#   a b
# 1 1 a
x

# interface to the outside world
#   file, gzfile, bzfile, url

# str(file)
# connections

con <- file("week01/foo.txt", "r")
data <- read.csv(con)
data

con <- gzfile("words.gz")
x <- readLines(con, 10)


con <- url("http://www.jhsph.edu", "r")
x <- readLines(con)
head(x)

# quiz
x <- c(4, "a", TRUE)
class(x)

x <- list(2, "a", "b", TRUE)
class(x[[1]])

x <- 1:4
y <- 2
x + y

data <- read.csv("week01/hw1_data.csv")
names(data)
data[1:2,]
attributes(data)
length(data)
size(data)

data[152:153,]
data[47, 1]

good <- complete.cases(data[,1])
good <- data[good,1]
good
mean(data[, 1])
summary(data[good,1])

summary(data)

good
length(good)

nrow(data)

sum(complete.cases(data[, 1]))



# q18
data2 <- data[complete.cases(data$Ozone, data$Temp),]
summary(data2[data2$Ozone > 31 & data2$Temp > 90 ,])

data2 <- data[complete.cases(data$Temp, data$Month),]
summary(data2[data2$Month == 6 ,])

data2 <- data[complete.cases(data$Ozone, data$Month),]
summary(data2[data2$Month == 5 ,])



