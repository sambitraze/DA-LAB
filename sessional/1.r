bubble_sort_422 <- function(x)
{
    n <- length(x)
        for (i in 1 : (n - 1)) {
            for (j in 1 : (n - i)) {
                if (x[j] > x[j + 1]) {
                    temp <- x[j]
                      x[j] <- x[j + 1]
                      x[j + 1] <- temp
                }
            }
        }
    x;
}

prime_422 <- function(x) {
  prime_422<-c()
  for(num in x)
  {
    flag = 0
    if(num > 1) {
      flag = 1
      for(i in 2:(num-1)) {
        if ((num %% i) == 0) {
          flag = 0
          break
        }
      }
    } 
    if(num == 2)    flag = 1
    if(flag == 1) {
      prime_422<-c(prime_422,num)
    }
  }
  prime_422;
}

arr <- sample(1 : 100, 10)
sorted_array <- bubble_sort(arr)
print(sorted_array)
prime_output <- prime_422(arr)
print(prime_output)