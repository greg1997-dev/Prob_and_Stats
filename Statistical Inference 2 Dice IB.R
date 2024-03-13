# In this script we will compare the theoretical mean and variance of
#throwing two dice and getting the sum of the faces
#////////THEORETICAL SECTION////////////////
results<-seq(2,12) #Generate a Vector of all Possible Results of the sum of rolling two dice
#We estimated the probabilities of every result by 
# using count theory the vector p holds all the probabilities
p<-c(1/36,2/36,3/36,4/36,5/36,6/36,5/36,4/36,3/36,2/36,1/36) 
#On the next command, we create a bar chart to visualize the
#density function of the experiment of throwing two dice
barplot(p,names.arg = results,xlab="Result",ylab="Density")
# Notice how the most plausible event is rolling a 7
#/////REAL SECTION///////
# We made all of you to roll some dice and note the result
# let's compare both scenarios and draw conclusions
#First let's retrieve our data from your results
df<-read.csv("https://raw.githubusercontent.com/greg1997-dev/Prob_and_Stats/main/Estadistica%20%20-%20Hoja%201.csv")
#Let's calculate the mean of these results
x_est<-mean(df$X8)
#We now want the deviation from the theoretical value
((mean(df$X8)/7)-1)*100
#We still are 10% away from the theoretical mean
abline(v=mean(df$X8),col='red')
#Notice that red line on our chart? Still far from being on 7

#/////////Multiple simulations///////
#What does it happen when we roll 5,000 times two dices? 
#Programming can help us out with this.
set.seed(120) #This command helps for code reproducibility
simulation<-trunc(runif(5000,1,6)+runif(5000,1,6))
#Let's create a histogram out of this
hist(simulation)
abline(v=7,col='red')
#Hey!! It almost looks as our first graph!! 
mean(simulation) #Now for comparing
((mean(simulation)/7)-1)*100 #We got closer by 100bp!!
