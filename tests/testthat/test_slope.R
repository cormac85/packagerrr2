context("Algebra")

test_that("slope is correct for typical coordinates", {
  expect_equal(slope(1, 1, 2, 2), 1)

  expect_equal(slope(1, 1, 1, 2), Inf)
  expect_equal(slope(1, 1, 2, 1), 0)
  expect_equal(slope(0, 0, 1, 1), 1)
  expect_equal(slope(0, 0, -1, 1), -1)
  expect_equal(slope(-0, -0, 100000, 100000), 1)
})

test_that("slope behaves well for invalid coordinates", {
  expect_equal(slope(1, 1, 1, 1), NaN) # Is this behaviour correct?
  expect_error(slope("a", 1 , 2, 2),
               "non-numeric argument to binary operator")
  # Could the error message be improved?
})
