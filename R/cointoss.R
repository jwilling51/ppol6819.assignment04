# Exercise 3: function for parameterized coin toss

#' Title
#'
#' @param n The number of coin tosses
#' @param p The probability of the coin landing on heads
#'
#' @returns The outcome of each toss, with 0s for tails and 1s for heads
#' @export
#'
#' @examples
cointoss <- function(n, p) {
  sample(c(0,1), size = n, replace = TRUE, prob = c(1-p, p))
}
