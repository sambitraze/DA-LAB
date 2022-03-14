# R-script to evaluate the simple interest of the given P, T, R using
# function, where function takes the default value for R

P <- as.integer(readline(prompt = "Enter the principal amount: "))
T <- as.integer(readline(prompt = "Enter the time in years: "))
R <- as.integer(readline(prompt = "Enter the rate of interest: "))

SI <- function(P, T, R) {
    return(P * T * R / 100)
}

print(paste("The simple interest is", SI(P, T, R)))