# Name:	Liam Dillingham
# ID:		010732714

# Variance of X = np(1-p)
# Expected value of X = np
# 
# Expected value: 6
# 6 = np ==> 6/p = n
# Variance = 2.4
# 2.4 = (6/p)p(1-p) ==> 
# p = 0.6?
# n = 10

# Problem 1: Binomial Distribution
# sd = sqrt(var)
dbinom(4, 10, 0.6)

# Problem 2: Normal Distribution
dnorm(20, 10, 6)
dnorm(16, 10, 6) - dnorm(4, 10, 6)

