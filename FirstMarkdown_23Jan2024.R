## ----setup, include=FALSE--------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)


## --------------------------------------------------------------------------------------

#r ```{r eval=TRUE, echo=TRUE}
# eval is whether we're showing the output
# echo is whether we're showing the code

# Use comments extensively in your coding!
Pred <- seq(1,10)       # make a vector of integers from 1 to 10
Res <- runif(10)        # generate 10 draws from a random uniform (0,1) distribution

# Print the random numbers
print(Res)


## --------------------------------------------------------------------------------------

# first chunk of code in rmd file
print(pi)
pi + 3



