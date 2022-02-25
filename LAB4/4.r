# Write a R program to create a list containing a vector, a matrix and a list and add element at the end of the list.

list_data <- list(
    c("Red", "Green", "Black"), matrix(c(1, 3, 5, 7, 9, 11), nrow = 2),
    list("Python", "PHP", "Java")
)
print("Original List:")
print(list_data)
print("Add a new element at the end of the list:")
list_data[4] <- "New element"
print("New list:")
print(list_data)