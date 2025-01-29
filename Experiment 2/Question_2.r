    same_birthday_probability <- function(n) {
    # Calculate the probability of at least two people having the same birthday
    # in a group of n people.
    # n: Number of people in the group
    # Returns: Probability of at least two people having the same birthday

    # Calculate the probability of no one having the same birthday
    prob_no_match <- 1
    for (i in 1:(n - 1)) {
        prob_no_match <- prob_no_match * (365 - i) / 365
    }

    # Calculate the probability of at least two people having the same birthday
    prob_match <- 1 - prob_no_match
    return(prob_match)
    }

    #finding the smallest value of n to match the given probability
    smallest_n <- function(probability) {
    # Find the smallest value of n such that the probability of at least two people
    # having the same birthday in a group of n people is greater than or equal to the given probability.
    # probability: Desired probability
    # Returns: Smallest value of n
    if (probability < 0 | probability > 1){
        return("Invalid probability value")
    }
        n <- 2
        while (same_birthday_probability(n) < probability) {
        n <- n + 1
        }
        return (n)
    }


    # Estimate probability for various n values
    n_values <- c(2, 10, 20, 30, 40, 50,364)
    probabilities <- sapply(n_values, same_birthday_probability)

    # Output the results
    print(data.frame(n = n_values, probability = probabilities))


    # Find the smallest value of n for a given probability
    desired_probability <- 0.5
    smallest_n_value <- smallest_n(desired_probability)
    print(paste("Smallest value of n for a probability of at least 0.5:", smallest_n_value))