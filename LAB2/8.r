M <- array(rpois(100, 50), dim = c(3, 3, 3))
print(M)
print("2nd row of 3rd matrix is ")

for (i in 1:3) {
    print(paste("For matrix", i, ": "))
    for (row in 1:nrow(M[, , i])) {
        sum <- 0
        for (col in 1:ncol(M[, , i])) {
            sum <- sum + M[, , i][row, col]
        }
        print(paste("The sum of row ", row, " is ", sum))
    }
}