getwd()
advertisement.df<-read.csv(file = "C:/Users/shara/Programming/R Programs/Social_Network_Ads.csv", header = TRUE)
head(advertisement.df)
summary(advertisement.df)
Purchased<-sum(advertisement.df$Purchased==1)
NotPurchased<-sum(advertisement.df$Purchased==0)
xside=c(Purchased,NotPurchased)

#Visualizing the Purchases through Barplot for the advertisement dataset of 400 rows.
barplot(xside,xlab="Purchase Status",names.arg=c("Purchased","NotPurchased"),ylab = "Count", col=c("Green","Red"), main="Plot of Purchase Status of 400 ", legend=unique(advertisement.df$Purchased), legend.text = c("Purchased based on Ads","Not Purchased"))





