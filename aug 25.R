#author: Mojekwu, date: august 25 2021, purpose: calculate correlation value

#loading the library

library("ggpubr")

#reading some sample data
my_data <- mtcars

#get a corelation value between "mpg" and "wt" and plot the distrubution

ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = 
TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000lbs)")

#use cor.test function to calculate corrrelation value without plotting

res <- cor.test(my_data$wt, my_data$mpg, method = "pearson")

res2 <- cor.test(my_data$wt, my_data$mpg, method = "spearman")