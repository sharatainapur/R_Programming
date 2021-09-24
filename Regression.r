install.packages("datarium")
library(datarium)
data("marketing", package = "datarium")
head(marketing)
var(marketing$youtube)
var(marketing$facebook)
var(marketing$newspaper)
var(marketing$sales)
plot(marketing)
model <- lm(sales ~ youtube+facebook, data=marketing)
summary(model)


model1 <- lm(sales ~ youtube, data=marketing)
summary(model1)

model2 <- lm(sales ~ facebook, data=marketing)
summary(model2)

