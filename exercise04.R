# Exercise 04

# Random walk

# Function should accept number of steps, size of steps, probability of stepping forwards or backwards
# Write a function with a forloop
# Should return a tibble() with the step number

# Example code from class:
#position <- 0
#for (i in 1:100) {
  # the for loop runs this code 100 times
 # position <- position + sample(x = c(1, -1), size = 1)
#}


# First try (unsuccessful)
library(tidyverse)
random_walk <- function(nsteps, stepsize, prob) {

  position <- 0
  for (iter in 1:nsteps) {
    position <- position + sample(x = stepsize, size = 1, prob = prob)
  }

  return(position)
}

# in sample() x defines the possible outcomes
# size defines the length of the walk

random_walk(nsteps = 10, stepsize = c(1, -1), prob = 0.5)
