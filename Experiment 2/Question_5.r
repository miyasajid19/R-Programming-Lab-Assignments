Mode <- function(x) {
    unique_values <- unique(x)
    frequencies <- tabulate(match(x, unique_values))
    max_frequency <- max(frequencies)
    mode_values <- unique_values[frequencies == max_frequency]
    return(list(modes = mode_values, frequency = max_frequency))
}

x = c(1, 2, 3, 4, 1, 2, 3, 1, 2, 3, 2, 1, 2, 1, 1,2,2, 3, 1, 2, 4, 4, 4, 1, 4)
mode_result <- Mode(x)
print(paste("The modes of the data are:", paste(mode_result$modes, collapse = ", "), "with a frequency of:", mode_result$frequency))
