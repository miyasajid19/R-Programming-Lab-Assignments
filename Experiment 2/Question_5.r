Mode <- function(x) {
    unique_values <- unique(x)
    frequencies <- tabulate(match(x, unique_values))
    mode_value <- unique_values[which.max(frequencies)]
    mode_frequency <- max(frequencies)
    return(list(mode = mode_value, frequency = mode_frequency))
}

x = c(1, 2, 3, 4, 1, 2, 3, 1, 2, 3, 2, 1, 2, 1, 1, 3, 1, 2, 4, 4, 4, 1, 4)
mode_result <- Mode(x)
print(paste("The mode of the data is:", mode_result$mode, "with a frequency of:", mode_result$frequency))
