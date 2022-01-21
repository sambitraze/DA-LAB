M <- array(rpois(100, 50), dim = c(3, 3, 3))
print(M)
print("2nd row of 3rd matrix is ")
print(M[, , 3][2, ])