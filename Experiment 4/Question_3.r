# Define the probability mass function of X
x <- c(0, 1, 2, 3)
p_x <- c(0.1, 0.2, 0.2, 0.5)

# Define the net revenue function Y based on the number of copies sold
net_revenue <- function(copies_sold) {
    revenue <- copies_sold * 12
    cost <- 3 * 6
    unsold_copies <- 3 - copies_sold
    return_value <- unsold_copies * 2
    net_revenue <- revenue - cost + return_value
    return(net_revenue)
}

# Calculate the expected value of Y
expected_value_Y <- sum(sapply(x, net_revenue) * p_x)
print(expected_value_Y)

# 9