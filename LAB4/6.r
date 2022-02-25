# Write a R program to create a list containing a vector, a matrix and a list and update the last element

list_data <- list(
    c("Red", "Green", "Blue"), matrix(c(1, 3, 5, 7, 9, 11), nrow = 2),
    list("Python")
)
print("original List:")
print(list_data)
print("Update the second element of the list:")
list_data[3] <- "R"
print("New list:")
print(list_data)