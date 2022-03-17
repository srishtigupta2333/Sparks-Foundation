## Sparks Foundation Internship ##
## Data Science and Business Analytics ##
## Author - Srishti Gupta ##

## Task-1: Prediction using Supervised ML ##
## Aim- to predict the percentage of a student based on the no. of study hours ##
## Question- What will be the predicted score if a student studies for 9.25 hrs/day ##


## Importing Data into R ##
library(readr)
data <- read_csv("student_scores - student_scores.csv")
View(data)

## installing ggplot2 package to create a scatter plot for the data ##
install.packages("ggplot2")
library(ggplot2)
ggplot(data, aes(x = Hours,
                 y = Scores, 
                 color = I("Blue"))) +
        geom_point()

## using lm function for regression, to generate slope and intercept for the Data
linear_model <- lm(Scores ~ Hours, data = data)
summary(linear_model)



