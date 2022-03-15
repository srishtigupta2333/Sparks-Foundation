## Sparks Foundation Internship ##
## Data Science and Business Analytics ##
## Author - Srishti Gupta ##
## Task-1: Prediction using Supervised ML ##
## Link to Data set - http://bit.ly/w-data ##

## Importing Data into R ##
library(readr)
data <- read_csv("student_scores - student_scores.csv")
View(data)

## installing ggplot2 package to create a scatter plot for the data ##
library(ggplot2)
ggplot(data, aes(x = Hours,
                 y = Scores, 
                 color = I("Blue"))) +
        geom_point()

## using lm function for regression, to generate slope and intercept for the Data
linear_model <- lm(Scores ~ Hours, data = data)
summary(linear_model)

