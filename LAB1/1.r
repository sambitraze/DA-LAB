name <- readline(prompt = "Enter name: ")
age <- readline(prompt = "Enter age: ")
age <- as.integer(age)
print(paste("Hello ", name, "! You are ", age, " years old."))