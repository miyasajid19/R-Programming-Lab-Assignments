# Define the PDF
f <- function(x) {
  if (x > 1 && x < 10) {
    return(0.5 * exp(-abs(x)))
  } else {
    return(0)  # Outside the range of 1 to 10, the PDF is 0
  }
}

# First moment (Mean)
mean <- integrate(function(x) x * f(x), 1, 10)$value

# Second moment
second_moment <- integrate(function(x) x^2 * f(x), 1, 10)$value

# Variance
variance <- second_moment - mean^2

# Output results
cat("Mean (First Moment):", mean, "\n")
cat("Second Moment:", second_moment, "\n")
cat("Variance:", variance, "\n")
