vector<-c(sample(0:100, size = 10, replace = F))

print(vector)

sum <- sum(vector)
mean <- mean(vector)
product <- prod(vector)

print(paste("Sum of given sequence is", sum))
print(paste("Mean of given sequence is", mean))
print(paste("Product of given sequence is", product))