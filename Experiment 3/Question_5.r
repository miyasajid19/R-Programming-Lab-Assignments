# Question 5

# Given data
p <- 0.447
n <- 31

# (a) X is distributed as a Binomial distribution
# X ~ Binomial(n, p)

# (b) Sketch the probability mass function (PMF)
x <- 0:n
pmf <- dbinom(x, size = n, prob = p)

# Plotting the PMF
plot(x, pmf, type = "h", lwd = 2, col = "blue", 
    main = "Probability Mass Function",
    xlab = "Number of students (X)", ylab = "Probability")

# (c) Sketch the cumulative distribution function (CDF)
cdf <- pbinom(x, size = n, prob = p)

# Plotting the CDF
plot(x, cdf, type = "s", lwd = 2, col = "red", 
    main = "Cumulative Distribution Function",
    xlab = "Number of students (X)", ylab = "Cumulative Probability")

# (d) Find mean, variance, and standard deviation of X
mean_X <- n * p
variance_X <- n * p * (1 - p)
std_dev_X <- sqrt(variance_X)

# Print the results
cat("Mean of X:", mean_X, "\n")
cat("Variance of X:", variance_X, "\n")
cat("Standard Deviation of X:", std_dev_X, "\n")