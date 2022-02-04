n <- as.integer(readline(prompt = "Enter a number :"))

if (n < 0) {
    print("Number is negative")
} else if (n > 0) {
    print("Number is positive")
} else {
    print("Number is zero")
}