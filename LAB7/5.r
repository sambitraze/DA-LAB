string1<-"Grim return  to the planet  of apes!!"
library(stringr)
print(str_replace(gsub("\\s+", " ", str_trim(string1)), "to", "o"))