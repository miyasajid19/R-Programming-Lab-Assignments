# Define the parameters for the binomial distribution
size <- 12
prob <- 1/6

# Calculate the probability of getting 7, 8, or 9 sixes
p_7_to_9 <- pbinom(9, size, prob) - pbinom(6, size, prob)

# Print the result
print(p_7_to_9)