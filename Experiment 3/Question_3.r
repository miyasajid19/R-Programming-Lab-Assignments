# Given: X ∼ Poisson(λ = 5)
# We need to find the probability that no car arrives from 10AM to 11AM
lambda_X <- 5
prob_no_car <- dpois(0, lambda_X)
cat("The probability that no car arrives from 10AM to 11AM is:", prob_no_car, "\n")

# Given: Y ∼ Poisson(λ = 50)
# We need to find the probability that there are between 48 and 50 customers, inclusive
lambda_Y <- 50
prob_48_to_50 <- ppois(50, lambda_Y) - ppois(47, lambda_Y)
cat("The probability that there are between 48 and 50 customers, inclusive, is:", prob_48_to_50, "\n")