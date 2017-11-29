# Name:	Liam Dillingham
# ID:		010732714
# Homework 9

# function
fx = function(x) {
   y = exp(-(x-5)^2)
   return(y)
}

# bisection method
# NOTE: e^x can never be negative
start=0
end=2
L=end-start
step=0 

while(L>10^-8) {
   middle=(start+end)/2
   if(fx(middle)*fx(start)<0) {
      end=middle
   } else {
      start=middle
   }
   L=end-start
   step=step+1
   cat(step," ",start," ",end," ",L,"\n")
}

curve(fx, from=-2, to=2, col="red", lwd=2, xlab="x", ylab="f(x)")
abline(h=0, col="blue", lwd=2, lty=2)
abline(v=0, col="blue", lwd=2)
abline(v=start, col="blue", lwd=2)