# Name:	Liam Dillingham
# ID:		010732714

# Use R to fit a logistic regression model for “Sex~Bwt” 
# (i.e., predict Sex using Body weight). 
# What is your fitted model? 
# Explain the estimated coefficient for variable “Bwt”.

library(MASS)
data(cats)

# Return 1 if male, 0 if female
cats[,1]=ifelse(cats[,1]=="M",1,0)

reg2=glm(Sex~Bwt,data=cats,family="binomial")
summary(reg2)

predict(reg2,data.frame(Bwt=2.3),type="response")

sex_new = c(1,0,0,1,1)
bwt_new = c(2.1, 2.2, 3.6, 3.5, 2.8)

prediction_new=predict(reg2,data.frame(sex=sex_new, Bwt=bwt_new),type="response")
cbind(sex_new,bwt_new,prediction_new)

classification_new=ifelse(prediction_new > 0.5, 1, 0)
cbind(sex_new, bwt_new, prediction_new, classification_new)