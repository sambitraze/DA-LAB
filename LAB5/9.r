calculate_sum <- function(n) {
    if (n <= 1) {
        return(n * n)
    } else {
        return(n * n + calculate_sum(n - 1))
    }
}

n <- as.integer(readline(prompt = "Enter a number: "))
print(paste("The sum of", n, "is", calculate_sum(n)))