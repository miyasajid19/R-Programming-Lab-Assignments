outcomes <- c("Success", "Failure")
probabilities <- c(0.9, 0.1)

sample_space <- sample(outcomes, 10, replace = TRUE, prob = probabilities)
print(sample_space)