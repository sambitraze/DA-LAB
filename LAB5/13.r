# Create a data frame to specify data on students given below:
# Roll number, Name, Department, Course, Year of joining
roll <- c(11, 13, 12)
name <- c(
    "Sambit1",
    "Sambit2",
    "Sambit3"
)
dept <- c(
    "CSE",
    "IT",
    "ECE"
)
course <- c(
    "B.Tech",
    "B.Tech",
    "B.Tech"
)
year <- c(
    "2016",
    "2017",
    "2018"
)
df <- data.frame(roll, name, dept, course, year)

print("Original data frame:")
print(df)

printname <- function(year) {
    print(df[df$year == year, "name"])
}

# var <- readline("Enter the year: ")
print("Resultant data frame:")
var <- "2017"
printname(var)