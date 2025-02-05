# Define the values of X and their corresponding probabilities
x <- c(0, 1, 2, 3, 4)
p_x <- c(0.41, 0.37, 0.16, 0.05, 0.01)

# Calculate the average number of imperfections per 10 meters using weighted.mean
average_imperfections <- weighted.mean(x, p_x)

# Print the result
cat("The average number of imperfections per 10 meters of fabric is:", average_imperfections, "\n")

# The average number of imperfections per 10 meters of fabric is: 0.88