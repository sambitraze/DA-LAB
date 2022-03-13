calculate_sum() <- function(n) {
    if (n <= 1) {
        return(n)
    } else {
        return(n + calculate_sum(n - 1))
    }
}

n <- as.integer(readline(prompt = "Enter a number: "))
print("The sum of 1 to", n, "is", calculate_sum(n))