# Define the probability distribution function for X
p_X <- function(x) {
    if (x >= 1) {
        return((3/4) * (1/4)^(x-1))
    } else {
        return(0)
    }
}

# Define the function to find the probability distribution of Y = X^2
p_Y <- function(y) {
    x <- sqrt(y)
    if (x == floor(x)) {
        return(p_X(x))
    } else {
        return(0)
    }
}

# Find the probability of Y for X = 3
X <- 3
Y <- X^2
prob_Y_for_X3 <- p_Y(Y)
cat("Probability of Y for X = 3:", prob_Y_for_X3, "\n")

# Calculate the expected value and variance of Y for X = 1,2,3,4,5
X_values <- 1:5
Y_values <- X_values^2
prob_Y_values <- sapply(Y_values, p_Y)

expected_value_Y <- sum(Y_values * prob_Y_values)
variance_Y <- sum((Y_values^2) * prob_Y_values) - expected_value_Y^2

cat("Expected value of Y:", expected_value_Y, "\n")
cat("Variance of Y:", variance_Y, "\n")


# Probability of Y for X = 3: 0.046875 
# Expected value of Y: 2.182617 
# Variance of Y: 7.614112