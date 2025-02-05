# Given data
total_processors <- 250
defective_processors <- 17
sample_size <- 5
x <- 3

# Calculate the probability of exactly 3 defectives in the sample
probability <- dhyper(x, defective_processors, total_processors - defective_processors, sample_size)

# Print the result
cat("The probability of exactly 3 defectives in the sample is:", probability)