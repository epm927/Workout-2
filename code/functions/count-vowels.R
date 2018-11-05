##################################
########## count_vowels ##########
##################################

#' @title Counts the number of Vowels in a Sentence
#' @description returns the number of vowels as a named vector
#' @param x (string)
#' @return a named vector of the vowels and their counts

count_vowels <- function(x) {
  if(typeof(x) != "character") {
    stop("invalid input; a string was expected")
  } else {
    
    spl <- str_split(x, "")
    acount <- sum(str_detect(tolower(spl[[1]]), "a|A"))
    ecount <- sum(str_detect(tolower(spl[[1]]), "e|E"))
    icount <- sum(str_detect(tolower(spl[[1]]), "i|I"))
    ocount <- sum(str_detect(tolower(spl[[1]]), "o|o"))
    ucount <- sum(str_detect(tolower(spl[[1]]), "u|U"))
    
    res <- c(as.double(acount), as.double(ecount), as.double(icount), 
             as.double(ocount), as.double(ucount))
    names(res) <- c("a", "e", "i", "o", "u")
    return(res)
  }
}