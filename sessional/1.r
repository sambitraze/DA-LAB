if(!require(tidyverse)) install.packages("tidyverse", repos = "http://cran.us.r-project.org")
if(!require(caret)) install.packages("caret", repos = "http://cran.us.r-project.org")
if(!require(data.table)) install.packages("data.table", repos = "http://cran.us.r-project.org")
if(!require(lubridate)) install.packages("data.table", repos = "http://cran.us.r-project.org")
if(!require(readxl)) install.packages("readxl", repos = "http://cran.us.r-project.org")
if(!require(rpart)) install.packages("rpart", repos = "http://cran.us.r-project.org")
if(!require(knitr)) install.packages("knitr", repos = "http://cran.us.r-project.org")
if(!require(corrplot)) install.packages("corrplot", repos = "http://cran.us.r-project.org")

library(tidyverse)
library(caret)
library(data.table)
library(lubridate)
library(readxl)
library(rpart)
library(knitr)
library(corrplot)

set.seed(1234)

url <-"https://archive.ics.uci.edu/ml/machine-learning-databases/00529/diabetes_data_upload.csv"
dest_file <- "diabetes_data_upload.csv"
download.file(url, destfile = dest_file)

diabetes <- read_csv("diabetes_data_upload.csv")


diabetes %>% as_tibble() %>% head()


dim(diabetes)

sum(is.na(diabetes))

diabetes %>% 
  group_by(class) %>%
  summarize(count = n()) %>%
  table()
age_plot <- diabetes %>%
  ggplot(aes(x = class, y = Age)) +
  geom_boxplot(aes(fill = class), show.legend = FALSE)+
  ylab("Age")+
  xlab("Diabetes Diagnosis")+
  ggtitle("Diabetes vs Age")

gender_plot <- diabetes %>%
  group_by(Gender) %>%
  ggplot(aes(x = Gender)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("Gender")+
  ggtitle("Diabetes vs Gender")

library("gridExtra")
grid.arrange(age_plot, gender_plot,
             ncol= 2, nrow = 1)

Polyuria_plot <- diabetes %>%
  group_by(Polyuria) %>%
  ggplot(aes(x = Polyuria)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("Polyuria")+
  ggtitle("Diabetes vs Polyuria")

Polydipsia_plot <- diabetes %>%
  group_by(Polydipsia) %>%
  ggplot(aes(x = Polydipsia)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("Polydipsia")+
  ggtitle("Diabetes vs Polydipsia")

library("gridExtra")
grid.arrange(Polyuria_plot, Polydipsia_plot,
             ncol= 2, nrow = 1)

#Very clear corelation between Polyuria and Diabetes. 
#Almost all patients with Polydipsia does suffer from Diabetes. Very strong correlation as well.

#Let's check how `sudden weight loss` and weakness affect diabetes.

sudden_weight_loss_plot <- diabetes %>%
  group_by(`sudden weight loss`) %>%
  ggplot(aes(x = `sudden weight loss`)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("sudden weight loss")+
  ggtitle("Diabetes vs sudden weight loss")

weakness_plot <- diabetes %>%
  group_by(weakness) %>%
  ggplot(aes(x = weakness)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("weakness")+
  ggtitle("Diabetes vs weakness")

library("gridExtra")
grid.arrange(sudden_weight_loss_plot, weakness_plot,
             ncol= 2, nrow = 1)


Polyphagia_plot <- diabetes %>%
  group_by(Polyphagia) %>%
  ggplot(aes(x = Polyphagia)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("Polyphagia")+
  ggtitle("Diabetes vs Polyphagia")

Genital_thrush_plot <- diabetes %>%
  group_by(`Genital thrush`) %>%
  ggplot(aes(x = `Genital thrush`)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("Genital thrush")+
  ggtitle("Diabetes vs Genital thrush")

library("gridExtra")
grid.arrange(Polyphagia_plot, Genital_thrush_plot,
             ncol= 2, nrow = 1)


visual_blurring_plot <- diabetes %>%
  group_by(`visual blurring`) %>%
  ggplot(aes(x = `visual blurring`)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("visual blurring")+
  ggtitle("Diabetes vs visual blurring")

Itching_plot <- diabetes %>%
  group_by(Itching) %>%
  ggplot(aes(x = Itching)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("Itching")+
  ggtitle("Diabetes vs Itching")

library("gridExtra")
grid.arrange(visual_blurring_plot, Itching_plot,
             ncol= 2, nrow = 1)

Irritability_plot <- diabetes %>%
  group_by(Irritability) %>%
  ggplot(aes(x = Irritability)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("Irritability")+
  ggtitle("Diabetes vs Irritability")

delayed_healing_plot <- diabetes %>%
  group_by(`delayed healing`) %>%
  ggplot(aes(x = `delayed healing`)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("delayed healing")+
  ggtitle("Diabetes vs delayed healing")

library("gridExtra")
grid.arrange(Irritability_plot, delayed_healing_plot,
             ncol= 2, nrow = 1)


partial_paresis_plot <- diabetes %>%
  group_by(`partial paresis`) %>%
  ggplot(aes(x = `partial paresis`)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("partial paresis")+
  ggtitle("Diabetes vs partial paresis")

muscle_stiffness_plot <- diabetes %>%
  group_by(`muscle stiffness`) %>%
  ggplot(aes(x = `muscle stiffness`)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("muscle stiffness")+
  ggtitle("Diabetes vs muscle stiffness")

library("gridExtra")
grid.arrange(partial_paresis_plot, muscle_stiffness_plot,
             ncol= 2, nrow = 1)


Alopecia_plot <- diabetes %>%
  group_by(Alopecia) %>%
  ggplot(aes(x = Alopecia)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("Alopecia")+
  ggtitle("Diabetes vs Alopecia")

Obesity_plot <- diabetes %>%
  group_by(Obesity) %>%
  ggplot(aes(x = Obesity)) +
  geom_bar(aes(fill = class), position = "dodge")+
  ylab("count")+
  xlab("Obesity")+
  ggtitle("Diabetes vs Obesity")

library("gridExtra")
grid.arrange(Alopecia_plot, Obesity_plot,
             ncol= 2, nrow = 1)

diabetes_num <- diabetes
diabetes_num <- diabetes_num %>% mutate(Gender = ifelse(Gender == "Male", 0, 1)) %>% mutate(Polyuria = ifelse(Polyuria == "No", 0, 1)) %>% mutate(Polydipsia = ifelse(Polydipsia == "No", 0, 1)) %>% mutate(`sudden weight loss` = ifelse(`sudden weight loss` == "No", 0, 1)) %>% mutate(weakness = ifelse(weakness == "No", 0, 1)) %>% mutate(Polyphagia = ifelse(Polyphagia == "No", 0, 1)) %>% mutate(`Genital thrush` = ifelse(`Genital thrush` == "No", 0, 1)) %>% mutate(`visual blurring`= ifelse(`visual blurring` == "No", 0, 1)) %>% mutate(Itching = ifelse(Itching == "No", 0, 1)) %>% mutate(Irritability = ifelse(Irritability == "No", 0, 1)) %>% mutate(`delayed healing` = ifelse(`delayed healing` == "No", 0, 1)) %>% mutate(`partial paresis` = ifelse(`partial paresis` == "No", 0, 1)) %>% mutate(`muscle stiffness` = ifelse(`muscle stiffness` == "No", 0, 1)) %>% mutate(Alopecia = ifelse(Alopecia == "No", 0, 1)) %>% mutate(Obesity = ifelse(Obesity == "No", 0, 1)) %>% mutate(class = ifelse(class == "Negative", 0, 1)) 


corrplot(cor(diabetes_num[, -9]), method = "circle")

set.seed(1234)

inTrain <- createDataPartition(y = diabetes_num$class, p = .2, list = FALSE)
training <- diabetes_num[-inTrain,]
testing <- diabetes_num[inTrain,]

nrow(training)
nrow(testing)

p <- 0.5


set.seed(1234)

rs_prediction <- 
  sample(c(1,0), length(testing$class), prob = c(1-p,p), replace = TRUE)
rs_prediction <- as.numeric(rs_prediction)
rs_cm <- confusionMatrix(table(rs_prediction, testing$class))
rs_cm



set.seed(1234)

lr_model <-glm(class ~ Age + Gender + Polyuria + Polydipsia + `sudden weight loss` + weakness + Polyphagia + `Genital thrush` + `visual blurring` + Itching + Irritability + `delayed healing` + `partial paresis` + `muscle stiffness` + Alopecia + Obesity, family=binomial(link='logit'),data=training)
summary(lr_model)

lr_prediction <- predict(lr_model,newdata=testing,type='response')
lr_prediction <- ifelse(lr_prediction > 0.5,1,0)
lr_prediction <- as.numeric(lr_prediction)
lr_cm <- confusionMatrix(table(lr_prediction, testing$class))
lr_cm


set.seed(1234)

dt_model <- rpart(class ~ Age + Gender + Polyuria + Polydipsia + `sudden weight loss` + weakness + Polyphagia + `Genital thrush` + `visual blurring` + Itching + Irritability + `delayed healing` + `partial paresis` + `muscle stiffness` + Alopecia + Obesity, data = training, control = rpart.control(cp = 0.005))

plot(dt_model, uniform=TRUE, 
     main="Decision Tree - Diabetes")
text(dt_model, use.n=TRUE, all=TRUE, cex=.7)

dt_prediction <- predict(dt_model, testing)
dt_prediction<- ifelse(dt_prediction > 0.5,1,0)
dt_prediction <- as.numeric(dt_prediction)
dt_cm <- confusionMatrix(table(dt_prediction, testing$class))
dt_cm



results <- data.frame(Method = character(),
                      Accuracy = double(),
                      Sensitivity = double(),
                      Specificity = double())

results[1,] <- c("Random sampling",
                 format(round(rs_cm$overall["Accuracy"],2), nsmall = 2),
                 format(round(rs_cm$byClass["Sensitivity"],2), nsmall = 2),
                 format(round(rs_cm$byClass["Specificity"],2), nsmall = 2))

results[2,] <- c("Logistic regression",
                 format(round(lr_cm$overall["Accuracy"],2), nsmall = 2),
                 format(round(lr_cm$byClass["Sensitivity"],2), nsmall = 2),
                 format(round(lr_cm$byClass["Specificity"],2), nsmall = 2))

results[3,] <- c("Decision tree",
                 format(round(dt_cm$overall["Accuracy"],2), nsmall = 2),
                 format(round(dt_cm$byClass["Sensitivity"],2), nsmall = 2),
                 format(round(dt_cm$byClass["Specificity"],2), nsmall = 2))
results