# Given values
mean_score <- 72
sd_score <- 15.2
score_threshold <- 84

# Calculate the Z-score for the threshold
z_score <- (score_threshold - mean_score) / sd_score

# Calculate the percentage of students scoring 84 or more
percentage_above_threshold <- 1 - pnorm(z_score)

# Convert to percentage
percentage_above_threshold <- percentage_above_threshold * 100

# Print the result
cat("Percentage of students scoring 84 or more:", percentage_above_threshold, "%\n")