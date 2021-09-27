#Installing a package using the below command: 
install.packages("tidyverse")

#To use the functions, objects, and help files in a package until you load it with library()
library(tidyverse)

#Installing other packages for data science
install.packages(c("nycflights13", "gapminder", "Lahman"))

#Running the R code
1+2

# What package an object comes from - dplyr::mutate(), or nycflights13::flights
#Checking the output of dataset - type the name - 
mtcars
head(mtcars)
head(mtcars,10)

#using the dput command to copy the file to question / for sharing
dput(mtcars)

# If we need to be explicit about where a function (or dataset) comes from, 
# we'll use the special form package::function(). For example, ggplot2::ggplot() 

summary(mpg)
ggplot2::mpg
names(mpg)

#Open the help by using the ?mpg 
?mpg

#Making a normal scatter plot - 
plot(mpg$displ,mpg$hwy)

#Making a ggplot - You complete your graph by adding one or more layers to ggplot(). The function 
# geom_point() adds a layer of points to your plot, which creates a scatterplot. 

ggplot(data = mpg)+geom_point(mapping=aes(x=displ, y=hwy))

#A graphing template - 
# ggplot(data = <DATA>) + <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

ggplot(data = mpg)+geom_point(mapping=aes(x=hwy, y=cyl))
ggplot(data = mpg)+geom_point(mapping=aes(x=class, y=drv))
?mpg

library(tidyverse)

# We can a third variable, like class, to a two dimensional scatterplot by mapping it to an aesthetic
ggplot(data = mpg)+geom_point(mapping = aes(x=displ, y=hwy, shape=class))

#The different variants are - 1) Color 2) Size 3) Shape 4) Alpha - transparency
#ggplot2 will only use six shapes at a time.

ggplot(data=mpg)+geom_point(mapping = aes(x=displ, y=hwy, alpha=class), color="blue")
mpg
#Using the help
library(tidyverse)
?mpg
?geom_point

ggplot(data=mpg)+geom_point(mapping = aes(x=displ, y=hwy, shape=class), color="blue", stroke=1)

names(mpg)
summary(mpg)
head(mpg)

plot(mpg)

?mpg
# For categorical variables, we can split plot into facets, subplots that each display one subset of the data.
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_wrap(~ class, nrow=4)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_grid(drv ~ cyl)


ggplot(data=mpg)+geom_point(mapping = aes(x=displ,y=hwy))
ggplot(data=mpg)+geom_smooth(mapping = aes(x=displ,y=hwy, linetype=class), color="black")+geom_point(mapping = aes(x=displ,y=hwy, color=class))
ggplot(data=mpg)+geom_dotplot(mapping = aes(x=displ,y=hwy))

?geom_bar
?stat_count

cnt <- stat_count(diamonds$cut)

#Making Bar Plot with count / stat_count
ggplot(data = diamonds) + stat_count(mapping = aes(x = cut))
ggplot(data = mpg) + stat_count(mapping = aes(x = manufacturer))

#Also, very basic
ggplot(data = mpg) + geom_bar(mapping = aes(x = manufacturer))

#Making Bar Plot with proportion
ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut, y = stat(prop), group = 1))

#Using stat summary function for the plot
ggplot(data = diamonds) + stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.min = min,
    fun.max = max,
    fun = median
  )


# Coloring the Bar Graph - 
ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut, colour = cut))
ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut, fill = cut))
ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut, fill = clarity))

names(diamonds)
head(diamonds)