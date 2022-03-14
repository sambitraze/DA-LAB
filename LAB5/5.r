n <- as.integer(readline(prompt = "Enter a number :"))

reverse <- function(n) {
    rev <- 0

    while (n > 0) {
        r <- n %% 10
        rev <- rev * 10 + r
        n <- n %/% 10
    }
    return(rev)
}

print(paste("The reverse of", n, "is", reverse(n)))