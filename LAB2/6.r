M <- matrix(rpois(10, 8), nrow = 3, ncol = 3, byrow = TRUE)
print(M)
for (row in 1:nrow(M)) {
    sum <- 0
    for (col in 1:ncol(M)) {
        sum <- sum + M[row, col]
    }
    print(paste("The sum of row ", row, " is ", sum))
}