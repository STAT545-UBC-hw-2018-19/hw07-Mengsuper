context("logarithm functions")

test_that("Input is not numbers", {
    x <- c("Hello", "World")
    expect_match(expo(x), "Please enter numbers")
})

test_that("At least numeric values work.", {
    x <- c(-10, 1, 2, 3)
    expect_equal(expo(x), exp(x))
})


