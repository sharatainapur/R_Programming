#OLS and WLS - solution changes only in terms of weights.
?lowess
# lowess - for single variable. 
# loess - for more than one variable 
# h too large --- oversmoothing ; if too small - undersmoothing

#Central Limit Theorem - the histogram of mean indicates that the means are normally distributed.
#Here we have made 10000 samples of UNIFORM distribution, each of size 10 with values between 0 and 1.

meann=c()
y<-c(1:10000)
for (s in y) {
  s<-runif(10)
  meann<-append(meann, mean(s))
}

hist(meann,col="Orange")

?hist()
print(mean(meann))