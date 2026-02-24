# Exercise 04

# Random walk

set.seed(20260223)

library(tidyverse)

random_walk <- function(nsteps, stepsize, prob) {

  position <- vector(mode = "numeric", length = nsteps)

  for (iter in 2:length(position)) {
    position[iter] <- position[iter-1] + sample(x = stepsize,
                                                size = 1,
                                                prob = prob)
  }

  result <- tibble(step_number = position,
                   location = 1:length(position))

  return(result)
}

random_walk(nsteps = 10, stepsize = c(1, -1), prob = c(0.5,0.5))

