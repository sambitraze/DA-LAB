convert_to_binary <- function(n) {
    bin <- ""
    if (n > 1) {
        bin <- convert_to_binary(as.integer(n / 2))
    }
    bin <- paste0(bin, n %% 2)
    return(as.numeric(bin))
}
n <- as.integer(readline(prompt = "Enter a number: "))
print(paste("The binary representation of", n, "is", convert_to_binary(n)))