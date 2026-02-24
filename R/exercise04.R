# Exercise 04

# Random walk

set.seed(20260223)

library(tidyverse)


#' Random Walk Function
#'
#' @param nsteps A numeric value for the number of steps of the random walk
#' @param stepsize A vector of two integers, one for the size of the forward step and one for the size of the backward step
#' @param prob A vector of two decimal values for the probabilities associated with each step size
#'
#' @returns A tibble showing each step number and its location
#'
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

