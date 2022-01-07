salary <- readline(prompt = "Enter your basic salary: ")
salary <- as.double(salary)
da <- salary * 0.4
hra <- salary * 0.2
gross_salary <- salary + da + hra
print(paste("Your gross salary is", gross_salary))
