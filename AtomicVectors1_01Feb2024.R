# Using the assignment operator
x <- 5 # preferred
y = 4 # legel but not used except in function defaults

y = y + 1.1
print(y)
y <- y + 1.1
print(y)

z <- 3 # Begin with lower case letter
plantHeight <- 10 # option "camelCaseFormatting"
plant.height <- 4.2 # avoid periods
plant_height <- 3.3 # OPTIMAL "snake_case_formatting" - easiest to read
. <- 5.5 # reserve this for a generic temporary variable (more later)


# One Dimensional Atomic Vectors

# the combine function
z <- c(3.2, 5, 5, 6)
print(z) # [1] 3.2 5.0 5.0 6.0
typeof(z) # "double"
is.numeric(z) # TRUE

# c() always "flattens" to an atomic vector - ignores any internal structure
z <- c(c(3,4),c(5,6))
y <- c(3,4,5,6)
x <- c(3,4)
print(z) # [3 4 5 6]
print(x) # [3, 4]
print(y) # [3, 4, 5, 6]

# character strings with single or double quotes (mixed) - ignore mix with c!
z <- c("perch", "bass", 'trout')
print(z)

# use both with internal quotes
z <- c("This is only 'one' character string", 'a second')
print(z) # [1] This is only 'one' character string" "a second"
typeof(z) # "character"
is.character(z) # TRUE


# building logicals
# Boolean, not with quotes, all caps
z <- c(TRUE,TRUE,FALSE)
# avoid abbreviations T, F which will work
print(z) # TRUE TRUE FALSE
typeof(z) # "logical"
is.logical(z) # TRUE
is.integer(z) # FALSE


# vector of character strings
dogs <- c("chow","pug","beagle","greyhound","akita")

# use number in brackets to refer to a single element in vector. First slot is "1"
dogs[1] # "chow"
dogs[5] # "akita"
dogs[6] # NA, but not an error

# pass the brackets a group of elements (= a vector) to subset the vector
dogs[c(3,5)] # "beagle" "akita"

# works fine with multiple repeats
dogs[c(1,1,1,4)] # "chow" "chow" "chow" "greyhound"

my_dogs <- c(1,4)
dogs[my_dogs] # my_dogs not in quotes bc NOT A CHARACTER STRING # "chow" "greyhound"

# grab the entire list by leaving brackets blank
dogs[]

# pass function to calculate the element needed
length(dogs) # 5
dogs[5] # "akita"
dogs[length(dogs)] # take the last element, but you don't know the length! # "akita"

# use negative numbers to EXCLUDE elements
dogs[-1] # "pug" "beagle" "greyhound" "akita" <-- excluding "chow"!
# use double negations!
dogs[c(-2,-4)] # "chow" "beagle" "akita"
dogs[-c(2,4)] # "chow" "beagle" "akita"

# CAN'T mix positive and negative elements in brackets
dogs[c(1,-5)] # ERROR



z <- c(1.1, 1.2, 3, 4.4)
typeof(z) # gives type
is.numeric(z) # gives logical
as.character(z) # makes/coerces variable into a character!
print(z)
typeof(z)

length(z) # gives number of elements # 4
length(y_not) # ERROR if variable does not exist



z <- runif(5)
print(z) # 0.39171394 0.88209576 0.54570724 0.82125342 0.02436458
# optional attribute not initially assigned
names(z) # NULL
print(z)
# add names later after variable is created
names(z) <- c("chow","pug","beagle","greyhound","akita")
print(z) # now each element (decimal) is associated with a name


# add names when variable is built (with or without quotes)
z2 <- c(gold=3.3, silver=10, lead=2)
print(z2) # each element (decimal) is associated with a name from the jump

# reset names
names(z2) <- NULL
print(z2) # now just the decimals!

# names can be added for only a few elements
# names do not have to be distinct, but often are
names(z2) <- c("copper","zinc")
print(z2) # name for just the first 2 elements
names(z2) <- c("copper",NA,"lead")
print(z2) # name for the first and last elements



# NA values for missing data
z <- c(3.2,3.3,NA) # AN is a missing value
typeof(z) # "double"
length(z) # 3
typeof(z[3]) # "double" - associated with doubles, so is a double

z1 <- NA
typeof(z1) # "logical"

is.na(z) # FALSE FALSE TRUE (there was an NA in the 3rd element) (IN BIG DATA SET USE REG EXPRESSIONS)
mean(z) # NA (bc there's an NA)
is.na(z) # FALSE FALSE TRUE (use to find missing values)
# ! = not true
!is.na(z) # TRUE TRUE FALSE (found the NA) (use to find NOT missing values)
mean(!is.na(z)) # 0.6666667 - NOT WHAT WE WANT
mean(z[!is.na(z)]) # 3.25 - WHAT WE WANT! - subset the vector, don't include it in the negation


# Not a Number: -Infinity and Infinity from numeric division
z <- 0/0 # NaN
typeof(z) # "double"
z <- 1/0 # NaN
print(z) # Inf
z <- -1/0
print(z) # -Inf

# NULL is an object that is nothing!
# a reserved word in R
z <- NULL
typeof(z) # "NULL"
length(z) # 0
is.null(z) # TRUE
