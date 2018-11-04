##################################
####### Minkowski Distance #######
##################################

#' @title Minkowski Distance
#' @description computes the Minkowski Distance between two points x and y, at a given p-value
#' @param x (vector)
#' @param y (vector)
#' @param p (numeric or "max"; default = 1)
#' @return a numeric value

minkowski <- function(x, y, p = 1) {
  if(length(x) != length(y)) {
    stop("x and y have different lengths")
  } else if(p < 1) {
    stop("p cannot be less than 1")
  } else if((is.character(p) == TRUE) & p != "max") {
    stop("invalid character value for p")
  } else if((is.character(p) == FALSE) & p != "max") {
    vec <- c()
    sum = 0
    for(i in 1:length(x)) {
      vec[i] = abs(x[i] - y[i])^p
      sum = sum + vec[i]
    }
    return(sum^(1/p))
  } else if(p == "max") {
    return(max(abs(x-y)))
  }
}