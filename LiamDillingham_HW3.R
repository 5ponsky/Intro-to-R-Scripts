# Name:	Liam Dillingham
# ID:		010732714

# Use for() loop to generate a sequence A, such that A[i]=A[i-1]+A[i+1] for i>1.
# Suppose the length of A is 100, A[1]=90, A[2]=10

# Declare the size of the array and initial condition
n=100
A=integer(n)
A[1]=90
A[2]=10

for(i in 2:n) {
 A[i]=A[i-1]+A[i+1]
}
A


# Use while() loop to output all the positive odd numbers that are less than 200
I=integer()
i=1
while(i<200) {
 I=c(I,i)
 i=i+2
}
I