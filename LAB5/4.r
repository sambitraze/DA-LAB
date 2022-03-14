calculate_sum <- function(n) {
    if (n <= 1) {
        return(n)
    } else {
        return(n + calculate_sum(n - 1))
    }
}

n <- as.integer(readline(prompt = "Enter a number: "))
res <- calculate_sum(n)
print(paste("The sum of", n, "is", res))