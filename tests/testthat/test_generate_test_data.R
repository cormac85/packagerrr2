context("Test Data")

test_that("test data has correct format", {
  actual_results <- generate_test_data()

  expect_is(actual_results$person, "character")
  expect_is(actual_results$score, "numeric")
  expect_equal(nrow(actual_results), 4)
  expect_equal(ncol(actual_results), 3)

})

test_that("test data values are valid", {
  actual_results <- generate_test_data()

  expect_equal(actual_results, na.omit(actual_results))
  expect_equal(mean(actual_results$score), 3.75)
})
