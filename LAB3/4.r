a <- as.integer(readline(prompt = "Enter a number :"))
b <- as.integer(readline(prompt = "Enter another number :"))

if (a > b) {
    print(paste("The first number is bigger than the second number.", a, b))
} else {
    print(paste("The second number is bigger than the first number.", a, b))
}