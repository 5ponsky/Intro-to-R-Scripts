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

# QQ normality
qqnorm(admission$GRE, ylab="GRE Scores",main="QQ GRE")
qqnorm(admission$GPA, ylab="GPA", main="QQ GPA")

# model fitting
model=glm(admit~GRE+GPA,data=admission,family="binomial")
summary(model)

# 
# for each predictor in the model, the coefficient is the ratio
# between the response level, and the reference event, assuming the other 
# predictors remain constant

# predict
pred=predict(model,vdata,type="response")

newdata=data.frame(GPA=3.4,GRE=650)
newpred=predict(model,newdata,type="response")
newpred

# A new applicant has a 34% chance of being accepted according to the model



