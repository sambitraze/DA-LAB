library(calendR)
Y <- as.integer(readline(prompt = "Enter year"))
M <- as.integer(readline(prompt = "Enter month in numeric"))
print(calendR(year = Y, month = M, start = "M")) 