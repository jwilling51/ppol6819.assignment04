# Exercise 04

# Random walk

set.seed(20260223)

library(tidyverse)


#' Random Walk Function
#'
#' @param nsteps A numeric value for the number of steps of the random walk
#' @param step_one A numeric value for the size of the first possible step
#' @param step_two A numeric value for the size of the second possible step
#' @param prob A vector of two decimal values for the probabilities associated with each step size
#'
#' @returns A tibble showing each step number and its location
#'
random_walk <- function(nsteps, step_one, step_two, prob) {

  position <- vector(mode = "numeric", length = nsteps)

  for (iter in 2:length(position)) {
    position[iter] <- position[iter-1] + sample(x = c(step_one, step_two),
                                                size = 1,
                                                prob = prob)
  }

  result <- tibble(location = position,
                   step_number = 1:length(position))

  return(result)
}

random_walk(nsteps = 10, step_one = 1, step_two = -1, prob = c(0.5,0.5))

