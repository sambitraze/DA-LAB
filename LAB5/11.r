pet <- sample(c("dog", "cat", "hamster", "goldfish"), 1000, replace = TRUE)
str(pet)

print(summary(as.factor(pet)))