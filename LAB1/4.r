n_422 <- as.integer(readline(prompt = "Enter a number :"))
s_422 <- 0

while (n_422 > 0) {
    r_422 <- n_422 %% 10
    s_422 <- s_422 + r_422
    n_422 <- n_422 %/% 10
}
print(paste("Sum of the digits is :", s_422))
