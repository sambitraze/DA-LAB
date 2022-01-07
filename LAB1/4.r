n_422 <- as.integer(readline(prompt = "Enter a number :"))
s_422 <- 0

while (n > 0) {
    r <- n %% 10
    s <- s + r
    n <- n %/% 10
}
print(paste("Sum of the digits is :", s))
