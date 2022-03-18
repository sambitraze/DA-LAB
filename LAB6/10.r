a <- Inf
b <- NA
c <- NaN
d <- ""

print(paste("Value", "class", "type", "mode", "storage"))
print(paste("Inf:", class(a), typeof(a), mode(a), storage.mode(a)))
print(paste("NA:", class(b), typeof(b), mode(b), storage.mode(b)))
print(paste("NaN:", class(c), typeof(c), mode(c), storage.mode(c)))
print(paste("", class(d), typeof(d), mode(d), storage.mode(d)))