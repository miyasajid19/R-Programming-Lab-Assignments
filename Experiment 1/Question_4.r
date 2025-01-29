# Function to perform addition
add <- function(a, b) {
  return(a + b)
}

# Function to perform subtraction
subtract <- function(a, b) {
  return(a - b)
}

# Function to perform multiplication
multiply <- function(a, b) {
  return(a * b)
}

# Function to perform division
divide <- function(a, b) {
  if (b == 0) {
    return("Error: Division by zero is not allowed.")
  } else {
    return(a / b)
  }
}

# Main program
cat("Simple Calculator\n")
cat("Choose an operation:\n")
cat("1. Add\n")
cat("2. Subtract\n")
cat("3. Multiply\n")
cat("4. Divide\n")

# Get user input for operation
operation <- as.integer(readline(prompt = "Enter the number for operation (1/2/3/4): "))

# Get user input for numbers
num1 <- as.numeric(readline(prompt = "Enter the first number: "))
num2 <- as.numeric(readline(prompt = "Enter the second number: "))

# Perform the chosen operation
if (operation == 1) {
  result <- add(num1, num2)
  cat("Result: ", result, "\n")
} else if (operation == 2) {
  result <- subtract(num1, num2)
  cat("Result: ", result, "\n")
} else if (operation == 3) {
  result <- multiply(num1, num2)
  cat("Result: ", result, "\n")
} else if (operation == 4) {
  result <- divide(num1, num2)
  cat("Result: ", result, "\n")
} else {
  cat("Invalid operation. Please select a valid option.\n")
}
