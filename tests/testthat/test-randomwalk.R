# Testing the random walk

library(testthat)
test_that("returns correct tibble dimensions", {
 expect_equal(
  dim(random_walk(100, step_one = 1, step_two = -1, c(0.75, 0.25))),
 c(100, 2)
    )
})

#test_that("returns correct tibble dimensions", {
 # expect_equal(
  #  dim(random_walk(100, c(2, -2), c(0.75, 0.25))),
   # c(100, 2)
    #    )
#})

#test_that("returns error when prob is negative", {
 # expect_error(random_walk(100, c(2, -2), c(-0.75, -0.25)))
#})

#test_that("only accepts positive whole integers for nsteps",{
#  expect_error(random_walk(-100, c(2, -2), c(0.75, 0.25)))
#  expect_error(random_walk(99.5, c(2, -2), c(0.75, 0.25)))
#})

#test_that("returns error when stepsize is not a vector of two numbers", {
#  expect_error(random_walk(100, 2, c(0.75, 0.25)))
#  expect_error(random_walk(100, c(1, 2, -2), c(0.75, 0.25)))
#})


#random_walk2(nsteps = 10, prob = c(0.5, 0.5))

#random_walk2(nsteps = 10, step_one = 1, step_two = -1, prob = 0.5)
