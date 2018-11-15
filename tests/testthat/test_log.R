context("logarithm functions")

test_that("Input is not numbers", {
    x <- c("Hello", "World")
    expect_match(log2(x), "Please enter numbers")
    expect_match(log10(x), "Please enter numbers")
})

test_that("Input is non-positive.", {
    x <- c(-1, 0)
    expect_match(log2(x), "Please enter positive numbers")
    expect_match(log10(x), "Please enter positive numbers")
})

test_that("At least numeric values work.", {
    x <- c(1, 8, 10)
    expect_identical(log2(x), log(x, base = 2))
    expect_identical(log10(x), log(x, base = 10))
})


