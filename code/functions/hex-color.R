##################################
##### First function: is_hex #####
##################################

#' @title Is this a valid Hexadecimal Expression?
#' @description determines whether a given string is in Hexadecimal notation
#' @param x (string of legnth 7, including an opening #)
#' @return a logical value (TRUE if Hexadecimal; False if else)

is_hex <- function(x) {
  if(typeof(x) != "character") {
    stop("invalid input; a string was expected")
  } else if(str_detect(toupper(x), "[G-Z]") == TRUE) {
    return(FALSE)
  } else if(strsplit(x, "")[[1]][1] != "#") {
    return(FALSE)
  } else if(length(strsplit(x, "")[[1]]) != 7) {
    return(FALSE)
  } else {
    return(TRUE)
  }
}

#########################################
##### Second function: is_hex_alpha #####
#########################################

#' @title Is this a valid Hexadecimal Expression, with an alpha value?
#' @description determines whether a given string is in Hexadecimal notation with a specified alpha value
#' @param x (string of legnth greater than 7, including an opening #)
#' @return a logical value (TRUE if Hexadecimal with alpha; False if else)



is_hex_alpha <- function(x) {
  if(typeof(x) != "character") {
    stop("invalid input; a string was expected")
  } else if(str_detect(toupper(x), "[G-Z]") == TRUE) {
    return(FALSE)
  } else if(strsplit(x, "")[[1]][1] != "#") {
    return(FALSE)
  } else if(length(strsplit(x, "")[[1]]) <= 7) {
    return(FALSE)
  } else {
    return(TRUE)
  }
}
