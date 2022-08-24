## Exercise: 1
## Date: 07-20-2022
## Author: James Laginess

# Setup -------------------------------------------------------------------
con <- url("http://www.finley-lab.com/files/data/batting.RData")
load(con)
close(con)
rm(con)


# Question 1 --------------------------------------------------------------
#How many seasons did Ted Williams play? (Hint: Use the length function.)
length(TedWilliamsBA)

#19 seasons

# Question 2 --------------------------------------------------------------
#In which season did Ted Williams have his highest batting average?
which.max(TedWilliamsBA)

#in 1953

# Question 3 --------------------------------------------------------------  
#What was this highest batting average?
max(TedWilliamsBA)

#his highest batting avg was 0.407

# Question 4 --------------------------------------------------------------  
#What was Ted Williams’ mean batting average?
mean(TedWilliamsBA)

#his mean batting avg was 0.3475789

# Question 5 --------------------------------------------------------------  
#For which pair of the variables representing home runs, RBIs, and batting average, is the correlation the highest? What is this correlation?

#BA, RBI
cor(TedWilliamsBA,TedWilliamsRBI)
#BA, HR
cor(TedWilliamsBA, TedWilliamsHR)
#HR, RBI
cor(TedWilliamsHR, TedWilliamsRBI)

#BA, RBI
plot(TedWilliamsBA, TedWilliamsRBI)
#BA, HR
plot(TedWilliamsBA, TedWilliamsHR)
#HR, RBI
plot(TedWilliamsHR, TedWilliamsRBI)

#correlation between TedWilliamsHR and TedWilliamsRBI is the largest at 0.8422571, the plot supports this as well.

# Question 6 --------------------------------------------------------------  
#What was the largest jump in Ted Williams’ RBIs from one season to the next? In which season did this jump occur? Note that we are asking for the largest magnitude jump, regardless of whether or not it was an increase or a decrease.

TedWilliamsRBIdiffs <-diff(TedWilliamsRBI, lag = 1)
max(TedWilliamsRBIdiffs)
which.max(abs(TedWilliamsRBIdiffs))

#the largest jump in RBIs was 10 in 1952.



