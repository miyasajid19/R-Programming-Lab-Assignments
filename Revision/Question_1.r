
# the probabilty that a patient recovers from a rare blood disease is 0.4. If 15 people are known to have been infected with this diease.
# what is the probabilty of :
# a. at least 10 survive
# b. from 3 to 8
# c. exactly 5 survive



n=15
p=0.4

# a
print(paste("The probabilty of the beign recovered at least 10 is ",1-pbinom(9,n,p)))

# b
print(paste("The probabilty of the being recovered with in 3 to 8  is ",pbinom(8,n,p)-pbinom(2,n,p)))

# c
print(paste("The probabilty of being survived exactly 5 is ",dbinom(5,n,p)))

print(paste("mean is ",n*p))
print(paste("variance is ",n*p*(1-p)))