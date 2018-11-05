#################################
######### reverse_chars #########
#################################

#' @title Reversing a String of Characters
#' @description returns the reverse of the given string
#' @param x (string)
#' @return a string

reverse_chars <- function(x) {
  temp <- str_split(x, "")
  rev <- c()
  for(i in 1:length(temp[[1]])) {
    rev[i] <- temp[[1]][length(temp[[1]]) - (i-1)]
  }
  return(paste(rev, collapse = ""))
}