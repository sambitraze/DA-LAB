list <- {}

for (i in 1:5) {
    list[i] <- as.integer(readline(prompt = "Enter a number: "))
}

cal = function(list) {
    sum <- 0
    for (i in list) {
        sum <- sum + i
    }
    avg <- sum / length(list)
    sd <- sqrt(sum / length(list))
    print(paste("The sum of", list, "is", sum))
    print(paste("The average of", list, "is", avg))
    print(paste("The standard deviation of", list, "is", sd))
}

cal(list)