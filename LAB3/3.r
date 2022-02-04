year <- as.integer(readline(prompt = "Enter a year :"))

if (year %% 400 == 0) {
  print(paste("is a leap year.", year))
} else if (year %% 100 == 0) {
  print(paste("is not a leap year.", year))
} else if (year %% 4 == 0) {
  print(paste("is a leap year.", year))
} else {
  print(paste("is not a leap year.", year))
}
