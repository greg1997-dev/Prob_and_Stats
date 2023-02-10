#Lab 2: Conditional Probability And Bayes Theorem
# Now that we have the basics of R, we can use some more complex functions such as
#conditional probability or Bayes Theorem
bayes<-function(prA,prB,prB_A){
  prA_B<-prA*prB_A/prB
  return(prA_B)
}
# Let's revisit the Covid example in which 2 out of every 1000 persons were infected
bayes(.002,0.8*0.002+0.02*0.998,0.8)

# And at the peak with 12% of the world population infected
bayes(.12,0.8*0.12+0.02*0.88,0.8)
#Let's work with conditional probability 
df<-read.csv("https://raw.githubusercontent.com/greg1997-dev/Prob_and_Stats/main/party_preference.csv")
library(dplyr)#Clean and transform a dataframe
df_new <- df %>%
  bind_rows(summarise(., 
                      across(where(is.numeric), sum),# We use the dplyr library to add a total
                      across(where(is.character), ~'Total'))) 
rownames(df)<-df$Party
df<-df[,-1]
# For our exercise we will assume belonging to a party will not be mutually exclusive
#Calculate the probability that a voter is into PT, given they are from MORENA
df[6,4]/df[1,4]

#Calculate the probability that a voter is into another 
#Right Party given they are from PAN



# Example for Bayes
# A computer manufacturer uses chips from three sources. Chips from sources X, Y and Z
# are defective with probabilities 0.005, 0.001 and 0.01, respectively. The proportions of chips
# from X, Y and Z are 0.5, 0.1 and 0.4 respectively. If a randomly selected chip is found to
# be defective, find:
# (a) the probability that the chips are from X.
# (b) the probability that the chips are from Y.
# (c) the probability that the chips are from Z.
prX<-0.5
prY<-0.1
prZ<-0.4
prD_X<-.005
prD_Y<-.001
prD_Z<-.01
prD<-prD_X*prX+prD_Y*prY+prD_Z*prZ

prX_D<-bayes(prX,prD,prD_X) #a)
prY_D<-bayes(prY,prD,prD_Y) #b)
prZ_D<-bayes(prZ,prD,prD_Z) #c)



#Exercise for Bayes Function
# Suppose there are three types of players in a chess tournament: A,
# B, and C. Fifty percent of the contestants in the tournament are A players, 12.5% are
# B players, and 37.5% are C players. Your chance of beating the contestants depends on
# the class of the player, as follows: 
# 0.3 against an A player
# 0.4 against a B player
# 0.5 against a C player
# If you play a match in this tournament, what is the probability of your winning the
# match? Supposing that you have won a match, what is the probability that you played
# against an A player? 
prA<-
prB<-
prC<-
prW_A<-
prW_B<-
prW_C<-
prW #How to calculate this Probability? Hint: Use the Total Probability Theorem

