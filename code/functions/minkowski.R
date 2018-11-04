##################################
####### Minkowski Distance #######
##################################

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