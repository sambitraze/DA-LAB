check <- function(x){
  count <- 0
  t <- c("a", "e", "i", "o", "u" , "A" ,"E" ,"I" , "O", "U")
  for (i in  unlist(strsplit(x, ""))) {
    if ( i %in% t ) {
      count <- count + 1 
    }   
  }
  cat("total no of vowels in '",x,"' is ",count)
}


my_string <- readline("enter a string : ")
check(my_string)