fibonacci <- function(n) {
  if (n < 0) {
    return("Fibonacci is not defined for negative numbers")
  }
  if (n == 0) {
    return(0)
  }
  if (n == 1) {
    return(1)
  }
  else {
    return(fibonacci(n - 1) + fibonacci(n - 2))
  }
}

n <- as.integer(readline(prompt = "Enter number of series: "))
for (i in 0:n) {
  print(fibonacci(i))
}
