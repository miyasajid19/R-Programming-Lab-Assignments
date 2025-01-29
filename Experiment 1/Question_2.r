factorial <- function(n) {
  if (n < 0) {
    return("factorial is not defined for negative numbers")
  }
  
  if (n == 0) {
    return(1)
  }
  
  else {
    return(n * factorial(n - 1))
  }
}

print(factorial(5))   
print(factorial(-5))  
print(factorial(0))   
