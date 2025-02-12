# Define the PDF function
f <- function(x) {
  ifelse(x >= 1 & x <= 10, 0.5 * exp(-abs(x)), 0)
}

# Integrate to find the first moment (mean)
first_moment <- integrate(function(x) x * f(x), lower = 1, upper = 10)$value

# Integrate to find the second moment
second_moment <- integrate(function(x) x^2 * f(x), lower = 1, upper = 10)$value

# Calculate the mean and variance
mean_x <- first_moment
variance_x <- second_moment - mean_x^2

# Print the results
cat("Mean (first moment):", mean_x, "\n")
cat("Variance:", variance_x, "\n")
