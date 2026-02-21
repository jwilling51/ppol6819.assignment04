library(testthat)

test_that("returns correct length", {
  expect_length(cointoss(10, 0.5), 10)
  })

test_that("doesn't accept probabilities greater than 1 or less than 0", {
  expect_error(cointoss(10, -1.5))
  expect_error(cointoss(10, 1.5))
  })

test_that("doesn't accept negative n", {
  expect_error(cointoss(-10, 0.5))
  })

test_that("only returns 0 and 1", {
  expect_true(all(cointoss(100, 0.5) %in% c(0,1)))
})
