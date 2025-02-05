# Define the probability density function
f <- function(t) {
    ifelse(t > 0, 0.1 * exp(-0.1 * t), 0)
}

# Define the function to calculate t * f(t)
t_f <- function(t) {
    t * f(t)
}

# Use the integrate function to find the expected value
expected_value <- integrate(t_f, lower = 0, upper = Inf)$value

# Print the expected value
print(expected_value)



# 10