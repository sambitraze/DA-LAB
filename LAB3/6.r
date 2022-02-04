marks <- c()
for (x in 1:3) {
  print(paste("for subject ", x))
  n <- as.integer(readline(prompt = "enter marks: "))
  marks <- c(marks, n)
}
print(paste("total marks are: ", sum(marks)))
print(paste("average marks are: ", mean(marks)))
if (mean(marks) >= 90) {
  print("O")
} else if (mean(marks) >= 80) {
  print("A")
} else if (mean(marks) >= 70) {
  print("B")
} else if (mean(marks) >= 60) {
  print("C")
} else if (mean(marks) >= 50) {
  print("D")
} else {
  print("F")
}