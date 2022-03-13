name <- c("Sambit1", "Sambit2", "Sambit3", "sambit4", "sambit5", "sambit6", "sambit7", "sambit8", "sambit9", "sambit10") # nolint
marks <- c(12.5, 9, 16.5, 12.5, 9, 16.5, 12.5, 9, 16.5, 12.5)
roll <- c(11, 13, 12, 14, 15, 16, 17, 18, 19, 20)
result <- c("yes", "no", "yes", "yes", "no", "yes", "yes", "no", "yes", "yes")
df <- data.frame(name, marks, roll, result)
print("Original dataframe:")
print(df)
print("Structure of the said data frame:")
print(str(df))
print("Extract 3rd and 5th rows with 1st and 3rd columns :")
result <- df[c(3, 5), c(1, 3)]
print(result)