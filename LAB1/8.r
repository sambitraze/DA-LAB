vector <- c(sample(0:100, size = 10, replace = F))
print("Vector is:")
print(vector)

max_res <- max(vector)
min_res <- min(vector)

print(paste("Maximum value of given sequence is", max_res))
print(paste("Minimum value of given sequence is", min_res))