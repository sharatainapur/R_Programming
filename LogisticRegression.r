getwd()
advertisement.df<-read.csv(file = "C:/Users/shara/Programming/R Programs/Social_Network_Ads.csv", header = TRUE)
head(advertisement.df)
summary(advertisement.df)
PurchasedAd<-sum(advertisement.df$Purchased==1)
NotPurchasedAd<-sum(advertisement.df$Purchased==0)
xside=c(PurchasedAd,NotPurchasedAd)
#Visualizing the Purchases through Barplot for the advertisement dataset of 400 rows.
barplot(xside,xlab="Purchase Status",names.arg=c("Purchased","NotPurchased"),ylab = "Count", col=c("Green","Red"), main="Plot of Purchase Status of 400 ", legend=unique(advertisement.df$Purchased), legend.text = c("Purchased based on Ads","Not Purchased"))
  
library(caTools)
split<-sample.split(advertisement.df$Purchased, SplitRatio=0.75)
train<-subset(advertisement.df, split==TRUE)
test<-subset(advertisement.df, split==FALSE)

attach(advertisement.df)
logit.lm<-glm(formula = Purchased~Gender+Age+EstimatedSalary, data = train, family = "binomial")
summary(logit.lm)
predict(logit.lm, newdata = test, type = "response")