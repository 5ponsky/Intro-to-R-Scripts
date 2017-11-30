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

qqnorm(admission$GRE, ylab="GRE Scores",main="QQ GRE")
qqnorm(admission$GPA, ylab="GPA", main="QQ GPA")


#logistic model
ind=sample(2,nrow(admission),replace=TRUE,prob=c(0.8,0.2))
tdata=admission[ind==1,]
vdata=admission[ind==2,]

model=glm(admit~GRE+GPA,data=tdata,family=binomial)
summary(model)

# predict
pred=predict(model,vdata,type="response")

newdata=data.frame(GPA=3.4,GRE=600)
newpred=predict(model,newdata,type="response")

# misclassification error
model_pre_admit=rep("0",75)
model_pred_admit[pred>0.5]="1"
tab=table(model_pred_admit, vdata$admit)
print(tab)
1-sum(diag(tab))/sum(tab)








# Create training data
admitted=admission[which(admission$admit == 1),]
notadmit=admission[which(admission$admit == 0),]
set.seed(100) #for repeatability of samples

admitted_training_rows=sample(1:nrow(admitted), 0.7*nrow(admitted))
notadmit_training_rows=sample(1:nrow(notadmit), 0.7*nrow(notadmit))

training_admit=admitted[admitted_training_rows,]
training_notadmit=notadmit[notadmit_training_rows,]
trainingdata=rbind(training_admit,training_notadmit)

#Create test data
test_admit=admitted

model=glm(admit~GPA+GRE,data=admission,family=binomial)
summary(model)

prediction=predict(model,type="response")
prediction

table(admission$admit, predict>0.5)