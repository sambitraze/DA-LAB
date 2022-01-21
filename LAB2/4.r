M <- matrix(rpois(10, 8), nrow = 3, ncol = 3, byrow = TRUE)
print(M)
for (row in 1:nrow(M)) {
    for (col in 1:ncol(M)) {
        if (M[row, col] < 5) {
            M[row, col] <- 0
        }
    }
}
print(M)