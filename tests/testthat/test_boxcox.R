context("Box-Cox functions")

test_that("Input is not numbers", {
    x <- c("Hello", "World")
    expect_match(boxCox(x), "Please enter numbers")
})

test_that("Input is non-positive.", {
    x <- c(-1, 0)
    expect_match(boxCox(x), "Please enter positive numbers")
})

test_that("At least numeric values work.", {
    x <- c(1, 8, 10)
    expect_equal(boxCox(x), boxcox(x, 1))
})


