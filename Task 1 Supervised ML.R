## Sparks Foundation Internship ##
## Data Science and Business Analytics ##
## Author - Srishti Gupta ##

## Task-1: Prediction using Supervised ML ##
## Aim- to predict the percentage of a student based on the no. of study hours ##
## Question- What will be the predicted score if a student studies for 9.25 hrs/day ##

## Importing Data into R ##
library(readr)
student_scores <- read_csv("student_scores - student_scores.csv")
View(student_scores)

## installing ggplot2 package to create a scatter plot for the data ##
install.packages("ggplot2")
library(ggplot2)
ggplot(student_scores, aes(x = Hours,
                           y = Scores, 
                           color = I("Blue")))  +
           geom_point()
  
## using lm function for regression, to generate slope and intercept for the Data
linear_model <- lm(Scores ~ Hours, data = student_scores)
summary(linear_model)

## we found our slope = 9.7758 and our intercept = 2.4387 ##
## We can add a linear regression line in our scatter plot ##

ggplot(student_scores, aes(x= Hours,
                           y = Scores,
                           color =I("Blue"))) +
  geom_point() +
  geom_abline(aes(intercept = 2.4387, slope = 9.7758, color = I("Red")))

## Add prediction values in data ##
student_scores$Predicted <- linear_model$fitted.values
View(student_scores)

## Predict scores if a student studies for 9.25 hours a day ##
predict(linear_model, data.frame(Hours = 9.25))

## Plotting a bar plot of actual vs predicted scores ##
barplot(student_scores$Scores, col = "blue",
        main = "Actual Scores",
        ylab = "Scores")
barplot(student_scores$Predicted, col = "red", 
        main = "Predicted Scores",
        ylab = "Scores")


## we can verify this predicted value by equation of line i.e.,##
## y = intercept + x*slope ##
linear_model$coefficients
y = 2.483673 + 9.25*9.775803
y

## Thus as seen from the model,##
## if a student studies 9.25hrs/day then he/she will get approximately 93 percent scores ##
