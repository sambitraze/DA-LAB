a <- c()
for (x in 1:3) {
    print(paste("For subject ", x))
    n <- as.integer(readline(prompt = "Enter a marks:"))
    a <- c(a, n)
}
print(paste("Total is :", sum(a)))
print(paste("Average is :", mean(a)))

if (mean(a) >= 90) {
    print("O")
} else if (mean(a) >= 80) {
    print("A")
} else if (mean(a) >= 70) {
    print("B")
} else if (mean(a) >= 60) {
    print("C")
} else if (mean(a) >= 50) {
    print("D")
} else {
    print("F")
}