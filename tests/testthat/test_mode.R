context("Modelling")

test_that("the model coefficients are as expected", {
  model <- lm(score ~ age, generate_test_data())

  expect_equal(length(model$coefficients), 2)
  expect_equal(length(na.omit(model$coefficients)), 2)
})

test_that("the model residuals are within tolerance", {
  model <- lm(score ~ age, generate_test_data())

  expect_lt(max(abs(model$residuals)), 5)
  expect_lt(mean(model$residuals), 2)
})
