# Write a R program to create a list containing a vector, a matrix and a list and give names to the elements in the list. Access the first and second
# element of the list.

list_data <- list(
    c("Red", "Green", "Black"), matrix(c(1, 3, 5, 7, 9, 11), nrow = 2),
    list("Python", "PHP", "Java")
)
print("Original List:")
print(list_data)
names(list_data) <- c("Color", "Odd numbers", "Language(s)")
print("List with column names:")
print(list_data)
print("1st element:")
print(list_data[1])
print("2nd element:")
print(list_data[2])