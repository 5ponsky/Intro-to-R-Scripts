# Name:	Liam Dillingham
# ID:		010732714

# Monte Carlo methods example 2
N=1000
X=runif(N, 0, 1)
mysamples=X^2*(1-X)^3
mean(mysamples)