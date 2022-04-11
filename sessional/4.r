Stud_id = c()
stud_name = c()
Fee_paid = c()
Date_of_Joining = c()

for (x in 1:5) {
  id = readline("Enter ID: ");
  name = readline("Enter Name: ");
  fees = readline("Enter Fees: ");
  date = readline("Enter date: ");
  Stud_id <- c(Stud_id, id)
  stud_name <- c(stud_name, name)
  Fee_paid <- c(Fee_paid, fees)
  Date_of_Joining <- c(Date_of_Joining, date)
}

df <- data.frame(Stud_id, stud_name, Fee_paid, Date_of_Joining)
print(df)