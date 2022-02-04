print("Menu driven program")
print("1. Area of circle")
print("2. Area of rectangle")
print("3. Area of triangle")
areac <- function() {
    r <- as.numeric(readline("Enter the radius: "))
    pi <- 3.14
    area <- pi * r * r
    return(area)
}
arear <- function() {
    length <- as.numeric(readline("Enter the length: "))
    width <- as.numeric(readline("Enter the width: "))
    area <- length * width
    return(area)
}
areat <- function() {
    side1 <- as.numeric(readline("Enter the side 1: "))
    side2 <- as.numeric(readline("Enter the side 2: "))
    side3 <- as.numeric(readline("Enter the side 3: "))
    s <- (side1 + side2 + side3) / 2
    area <- sqrt(s * (s - side1) * (s - side2) * (s - side3))
    return(area)
}
choice <- as.integer(readline("Enter your choice: "))
resp <- switch(choice,
    "Circle",
    "Rectangle",
    "Triangle",
)
result <- switch(choice,
    areac(),
    arear(),
    areat(),
)

print(paste("Area of ", resp, " is ", result))