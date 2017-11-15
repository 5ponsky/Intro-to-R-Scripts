# Name:	Liam Dillingham
# ID:		010732714
# Homework 9

fx = function(x) {
   y = exp(-(x-5)^2)
   return(y)
}

curve(fx, from=-2, to=2, col="red", lwd=2, xlab="x", ylab="f(x)")
abline(h=0, col="blue", lwd=2, lty=2)