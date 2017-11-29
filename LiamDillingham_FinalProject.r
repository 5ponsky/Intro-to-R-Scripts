# Name:	Liam Dillingham
# ID:		010732714

# Load data from file into frame
setwd("c:/data")
getwd()
admission = read.table("admission.txt", header=TRUE)

# Histogram for GRE, GPA
hist(admission[,2], xlab="GRE", main="Histogram")
hist(admission[,3], xlab="GPA", main="Histogram")

# Boxplot for GRE, GPA
boxplot(admission[,2], col="red", main="GRE")
boxplot(admission[,3], col="blue", main="GPA")

# Shapiro-Wilk and QQplot
shapiro.test(admission$GRE)
shapiro.test(admission$GPA)

qqnorm(admission$GRE)

model=glm(admit~GPA+GRE,data=admission[,2],family=binomial)
summary(model)

prediction=predict(model,type="response")
prediction