# Testing the random walk

library(testthat)

test_that("returns correct tibble dimensions", {
 expect_equal(
  dim(random_walk(100, step_one = 1, step_two = -1, c(0.75, 0.25))),
 c(100, 2)
    )
})

test_that("returns error when prob is negative", {
 expect_error(random_walk(100, 1, -1, c(-0.75, -0.25)))
})

test_that("only accepts positive integers for nsteps",{
  expect_error(random_walk(-100, 1, -1, c(0.75, 0.25)))
})
