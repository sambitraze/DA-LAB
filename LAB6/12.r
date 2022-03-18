temperature1 <- c(40.5)
temperature2 <- c(50.5)
beaver1 <- data.frame(temperature1)
beaver2 <- data.frame(temperature2)

print("Original dataframe:")
print(beaver1)
print(beaver2)

beaver1$id <- c(1)
beaver2$id <- c(2)

print("Updated dataframe:")
print(beaver1)
print(beaver2)

d <- merge(beaver1, beaver2, by=intersect(names(beaver1), names(beaver2)))
print(d)