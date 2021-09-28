# Linear Regression Model to predict the Fuel Efficiency of Cars based considering the Car Weight
dataset = mtcars
attach(dataset)

?mtcars

#Plotting a Scatter plot to check the nature of relationship between variables
plot(wt,mpg,xlab = "Weight of the Car (1000lbs)", ylab = "Fuel Efficiency of the Car (Miles/US gallon)", main = "Scatter Plot of the Weight and Fuel Efficiency of the Cars",pch=20)

# Splitting the dataset into the Training set and Test set
install.packages('caTools')
library(caTools)
split = sample.split(dataset$mpg, SplitRatio = 0.9)
trainingset = subset(dataset, split == TRUE)
testset = subset(dataset, split == FALSE)

plot(trainingset$wt, trainingset$mpg,pch=20)
# Fitting Simple Linear Regression to the Training set
lm.r= lm(formula = mpg ~ wt,data = trainingset)
summary(lm.r)
lm.r
#Check the model coefficients:
coef(lm.r)


#Scatter Plot with the fitted line on the Training Dataset
plot(trainingset$wt, trainingset$mpg,pch=20)
abline(lm.r)

plot(testset$wt, testset$mpg,pch=20)
abline(lm.r)

?abline
#y=c+mx -> Linear Model ===> mpg = 38.847419 - 5.750522*(wt) 

# Predicting the Test set results
ypred = predict(lm.r, newdata = testset)

install.packages("ggplot2")
library(ggplot2)

# Visualizing the Training set results
ggplot() + geom_point(aes(x = trainingset$wt,y = trainingset$mpg), colour = 'red') + 
  geom_line(aes(x = trainingset$wt,y = predict(lm.r, newdata = trainingset)), colour = 'blue') +
  ggtitle('MPG vs WT (Training set)') +
  xlab('WT') + ylab('MPG')

# Visualizing the Test set results
ggplot() + geom_point(aes(x = testset$wt, y = testset$mpg), colour = 'red') +
  geom_line(aes(x = trainingset$wt, y = predict(lm.r, newdata = trainingset)), colour = 'black') +
  ggtitle('MPG vs WT (Test set)') +
  xlab('WT') + ylab('MPG')

predict(lm.r, data.frame(wt=5))
