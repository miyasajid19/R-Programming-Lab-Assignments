# Load the iris dataset
df <- iris

# Define the columns to analyze
columns_to_analyze <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")

# Loop over the columns
for (col in columns_to_analyze) {
  
  # Print the analysis title for the current column
  cat("\n==============================\n")
  cat(" Analysis for", col, "\n")
  cat("==============================\n")
  
  # Range
  cat("Range of", col, ":\n")
  print(range(df[[col]]))
  
  # Mean
  cat("Mean of", col, ":\n")
  print(mean(df[[col]]))
  
  # Median
  cat("Median of", col, ":\n")
  print(median(df[[col]]))
  
  # First Quartile (Q1)
  cat("First Quartile (Q1) of", col, ":\n")
  print(quantile(df[[col]], 0.25))
  
  # Third Quartile (Q3)
  cat("Third Quartile (Q3) of", col, ":\n")
  print(quantile(df[[col]], 0.75))
  
  # Interquartile Range (IQR)
  cat("Interquartile Range (IQR) of", col, ":\n")
  print(IQR(df[[col]]))
  
  # Standard Deviation
  cat("Standard Deviation of", col, ":\n")
  print(sd(df[[col]]))
  
  # Variance
  cat("Variance of", col, ":\n")
  print(var(df[[col]]))
  
  # Print a separator between columns for better readability
  cat("\n------------------------------\n")
}

# Summarize the dataset using the built-in summary function
cat("\n==============================\n")
cat(" Summary of the entire dataset \n")
cat("==============================\n")
print(summary(df))