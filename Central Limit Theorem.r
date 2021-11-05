#OLS and WLS - solution changes only in terms of weights.
?lowess
# lowess - for single variable. 
# loess - for more than one variable 
# h too large --- oversmoothing ; if too small - undersmoothing

#Central Limit Theorem
meann=c()
y<-c(1:10000)
for (s in y) {
  s<-runif(10)
  meann<-append(meann, mean(s))
}

hist(meann,col="Orange")

?hist()
print(mean(meann))