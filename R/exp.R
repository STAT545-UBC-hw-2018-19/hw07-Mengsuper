#' Exponential function (base e)
#'
#' @param x: input vector
#' @return e^x
#' @export

expo <- function(x) {
    if (any(!is.numeric(x))) {
        return ("Please enter numbers")
    }
    pow(exp(1), x, plot_it = FALSE)
}
