a <- Inf
b <- NA
c <- NaN
d <- ""

paste("Value", "class", "type", "mode", "storage")
paste("Inf:", class(a), typeof(a), mode(a), storage.mode(a))
paste("NA:", class(b), typeof(b), mode(b), storage.mode(b))
paste("NaN:", class(c), typeof(c), mode(c), storage.mode(c))
paste("", class(d), typeof(d), mode(d), storage.mode(d))