calculate_sum() <- function(n) {
    if (n <= 1) {
        return(n * n)
    } else {
        return(n * n + calculate_sum(n - 1))
    }
}

n <- as.integer(readline(prompt = "Enter a number: "))
print("The sum of squares of 1 to", n, "is", calculate_sum(n))