

# First load MASS
library(MASS)

# load data set
data(cats)

# execute
cats

# generate scatter plot
plot(cats[,3], cats[,2], pch=19, col="red", xlab="Heart Weight", ylab="Body Weight", main="Heart Wt. v. Body Wt.")

# Draw line of best fit
reg1 = lm(cats[,2]~cats[,3])
abline(reg1, lty=1, col="blue", lwd=2)

# Generate a box plot
