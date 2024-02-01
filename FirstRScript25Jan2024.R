# First comment to explain what this program is doing.
# Be expansive and describe it in great detail. This may seem trivial, but will become increasingly important as you create complex programs.
# Simple script to examine the distribution of the product of two uniform variables
# Make sure it is readable. Use complete sentences, not cryptic phrases.
# 6 September 2018
# NJG

# Preliminaries
library(ggplot2)
set.seed(100)
library(TeachingDemos) # use this to set the random number seed from a character string
char2seed("green tea")
char2seed("green tea",set=FALSE)

# Global variables
nRep <- 10000

# Create or read in data
ranVar1 <- rnorm(nRep)
# print(ranVar1)
head(ranVar1)

# print(ranVar1)
head(ranVar1)
tail(ranVar1)

ranVar2 <- rnorm(nRep)


# visualize data
qplot(x=ranVar1)

# create product vector
ranProd <- ranVar1*ranVar2
length(ranProd)

str(ranProd)

head(ranProd)

# Here is a new comment (not a line of code!)

z <- 3 + 4
print(z)


