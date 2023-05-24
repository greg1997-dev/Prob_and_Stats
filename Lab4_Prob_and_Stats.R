#Lab 4: Statistical Inference 
# In this lab we will work with the most basic things from Statistical Inference and how to accept
# or rejcect hypothesis
library(ggplot2)
library(tidyverse)

# First, let's download our dataset
df<-read.csv("https://raw.githubusercontent.com/greg1997-dev/Prob_and_Stats/main/Lab4.csv")

#1 Unemployment Rate. According to the US Statistics Department the average unemployment rate in the
# last 13 years has been above 6%. Can this claim be proved with the monthly observations? 
unemp<-df$Unemployment
boxplot(unemp) #Take a glimpse at the data dispersion
qqnorm(unemp)
qqline(unemp)
t.test(unemp, mu = 6, alternative = "less")


#2 Who was better at the Azerbaiyan GP this year? Sergio Perez or Max Verstappen? We know that Perez
# made a superb driving on the race, however, we have the theory that VER was neck to neck with PER
# let's analyze their lap by lap times. We removed the slow laps (Safety Cars, Pit Stops).

VER<-df$Verstappen
PER<-df$SergioPerez
boxplot(VER,PER)

t.test(VER,PER,alternative="less")


#ANOVA Table. The Orange Dataset has 5 different Trees and their circumference throughout the ages.
# The trees were measured at the same time every year. Let's see if all trees grow the same or
#it is just by chance
or<-Orange
res_aov<-aov(circumference~Tree,data=or)
summary(res_aov)


