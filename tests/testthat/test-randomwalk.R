# Testing the random walk

library(testthat)

test_that("returns correct tibble dimensions", {
  expect_equal(
    dim(random_walk(100, c(2, -2), c(0.75, 0.25))), c(100, 2)
        )
}
)

test_that("returns error when prob is negative", {
  expect_error(random_walk(nsteps = 100,
                           stepsize = c(2, -2),
                           prob = c(-0.75, -0.25)))
})
