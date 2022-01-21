M <- matrix(rpois(1, 1), nrow = 3, ncol = 3, byrow = TRUE)
N <- matrix(rpois(1, 1), nrow = 3, ncol = 3, byrow = TRUE)
print(M)
for (row in 1:nrow(M)) {
    for (col in 1:ncol(M)) {
        if (M[row, col] < 5) {
            N[row, col] <- M[col, row]
        }
    }
}

isSymmetric <- 1
for (row in 1:nrow(M)) {
    for (col in 1:ncol(M)) {
        if (M[row, col] != N[row, col]) {
            isSymmetric <- 0
            break
        }
    }
}

if (isSymmetric == 1) {
    print("The matrix is symmetric")
} else {
    print("The matrix is not symmetric")
}