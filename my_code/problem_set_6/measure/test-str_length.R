library(testthat)
library(stringr)

test_that("`str_length` returns correct value", {
  expect_equal(str_length("abc"), 3)
  expect_equal(str_length("12345"), 5)
  expect_equal(str_length("\n\n\n\n\n\n"), 6)
  expect_equal(str_length(""), 0)
})

test_that("`str_length` returns a vector", {
  expect_equal(str_length(c("123", "abcde", "")), c(3, 5, 0))
})

test_that("`str_length` handles NA correctly", {
  expect_equal(str_length(NA), NA_integer_)
  expect_equal(str_length(c("12", NA)), c(2, NA))
})

test_that("`str_length` handles input that is not a vector but is vector-convertable", {
  expect_equal(str_length(factor("2222")), 4)
})
