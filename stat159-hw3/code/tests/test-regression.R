source("../functions/regression-functions.R")

reg <- lm(mpg ~ disp + hp, data = mtcars)
regsum <- summary(reg)

require(testthat)

context("Test various Regression calculation functions")

test_that("RSS function works as expected", {
  
  expect_equal(residual_sum_squares(reg), sum(reg$residuals^2))
  expect_length(residual_sum_squares(reg), 1)

  }
)
  
test_that("TSS function works as expected", {
  
  expect_equal(total_sum_squares(reg), sum((mtcars$mpg - mean(mtcars$mpg))^2))
  expect_length(total_sum_squares(reg), 1)
  
  }
)

test_that("RSE Function works as expected", {
  
  expect_equal(residual_std_error(reg), regsum$sigma)
  expect_length(residual_std_error(reg), 1)
  
  }
)

test_that("R2 Function works as expected", {
  
  expect_equal(r_squared(reg), regsum$r.squared)
  expect_length(r_squared(reg), 1)
  
  }
)

test_that("F-Statistic Function works as expected", {
  
  expect_equal(f_statistic(reg), unname(regsum$fstatistic[1]))
  expect_length(f_statistic(reg), 1)
  
  }
)








