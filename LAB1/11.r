salary_422 <-  as.double(readline(prompt = "Enter your basic salary: "))
da_422 <- salary_422 * 0.4
hra_422 <- salary_422 * 0.2
gross_salary_422 <- salary_422 + da_422 + hra_422
print(paste("Your gross salary is", gross_salary_422))
