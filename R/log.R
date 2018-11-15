#' logarithm function (base 2)
#'
#' @param x: input vector
#' @return log2(x)
#' @export

log2 <- function(x) {
    if (any(!is.numeric(x))) {
        return ("Please enter numbers")
    }
    if (any(x <= 0)) {
        return ("Please enter positive numbers")
    }
    log(x, base = 2)
}


#' logarithm function (base 10)
#'
#' @param x: input vector
#' @return log10(x)
#' @export

log10 <- function(x) {
    if (any(!is.numeric(x))) {
        return ("Please enter numbers")
    }
    if (any(x <= 0)) {
        return ("Please enter positive numbers")
    }
    log(x, base = 10)
}
