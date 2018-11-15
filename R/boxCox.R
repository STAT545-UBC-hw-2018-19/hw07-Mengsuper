#' Box-Cox transform
#'
#' @param x: input list
#' @param lambda: transformation parameter
#'
#' @return the Box-Cox tranformed data
#'
#' @export

boxCox <- function(x, lambda = 1) {
    if (any(!is.numeric(x))) {
        return ("Please enter numbers")
    }
    if (any(x <= 0)) {
        return ("Please enter positive numbers")
    }
    if (lambda == 0) {
        log(x)
    } else {
        (pow(x, lambda, plot_it = FALSE) - 1)/lambda
    }
}
