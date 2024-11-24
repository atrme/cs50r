source("believe.R")
library(testthat)

describe("distance()", {
  it("can calculate the distance between two points", {
    expect_equal(distance(c(-1, -1), c(1, 1)), 2*sqrt(2), tolerance=1e-6)
    expect_equal(distance(5, 10), 5)
    expect_equal(distance(c(1, 2, 3, 4), c(5, 5, 5, 5)), sqrt(30), tolerance=1e-6)
  })
  it("can handle input with NA", {
    expect_equal(distance(c(NA, -1), c(1, 2)), NA)
  })
  it("can warn user when given non-numeric input", {
    expect_warning(distance(c("1", "2"), c(1, 2)))
    expect_warning(distance(TRUE, FALSE))
  })
  it("can output NA when given non-numeric input", {
    expect_equal(suppressWarnings(distance("1", "2")), NA)
    expect_equal(suppressWarnings(distance(TRUE, FALSE)), NA)
  })
  it("can raise an error when two points are not identical in dimensions", {
    expect_error(distance(c(1, 2), c(2, 1, 3)))
  })
})
