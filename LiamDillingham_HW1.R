# Numeric vector calculations
v = c(1.0, 2.1, 3.3, 4.2, 5.4, 6.2, 7.4, 8.4, 9.5, 10.1)
sum(v)
max(v)
min(v)
mean(v)
var(v)
median(v)

# 4x4 matrix
m = matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16), 4, 4, TRUE)
sum(m[1,])
sum(m[2,])
sum(m[3,])
sum(m[4,])

mean(m[1,])
mean(m[2,])
mean(m[3,])
mean(m[4,])

eigen(m)
m[,1]
m[,4]
t(m)

# Data frame with numbers and characters
nums = c(1, 2, 3)
chars = c("a", "b", "c")
df = data.frame(nums, chars)

# list containing numbers and characters
list = list(nums, chars)

# combining two compatible matrices
A = matrix(c(1, 2, 3, 4), 2, 2, TRUE)
B = matrix(c(5, 6, 7, 8), 2, 2, TRUE)
rbind(A, B)
cbind(A, B)

