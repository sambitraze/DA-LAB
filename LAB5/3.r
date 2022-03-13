hcf <- function(x, y) {
    if (x > y) {
        smaller <- y
    } else {
        smaller <- x
    }
    for (i in 1:smaller) {
        if ((x %% i == 0) && (y %% i == 0)) {
            hcf <- i
        }
    }
    return(hcf)
}
lcm <- function(x, y) {
    if (x > y) {
        greater <- x
    } else {
        greater <- y
    }
    while (TRUE) {
        if ((greater %% x == 0) && (greater %% y == 0)) {
            lcm <- greater
            break
        }
        greater <- greater + 1
    }
    return(lcm)
}
num1 <- as.integer(readline(prompt = "Enter first number: "))
num2 <- as.integer(readline(prompt = "Enter second number: "))
print(paste("The H.C.F. of", num1, "and", num2, "is", hcf(num1, num2)))
print(paste("The L.C.M. of", num1,"and", num2,"is", lcm(num1, num2)))