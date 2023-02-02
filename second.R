barplot(mtcars$cyl)	#does'nt work

#Need table with frequencies for each category
cylinders <- table(mtcars$cyl) 	#create table
barplot(cylinders)			#Bar chart
plot(cylinders)				#Default X-Y plot (lines)

#Load packages##################################################################
library(datasets)
#Load data######################################################################
?iris
head(iris)

#Basic Histogram################################################################

hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

#Histogram by group#############################################################
