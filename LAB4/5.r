# Write a R program to create a list containing a vector, a matrix and a list and remove the second element.

list_data <- list(c("Red","Green","Black"), matrix(c(1,3,5,7,9,11), nrow = 2),
list("Python", "PHP", "Java"))
print("List:")
print(list_data)
print("Remove the second element of the list:")
list_data[2] = NULL
print("New list:")
print(list_data)