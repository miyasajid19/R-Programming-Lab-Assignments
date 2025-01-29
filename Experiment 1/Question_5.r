par(mfrow = c(2, 3))

x <- c(1:10)  
y <- seq(from = 7, to = 70, by = 7)
plot(x, y, type = "l", col = "red", lwd = 2, xlab = "X-axis", ylab = "Y-axis", main = "Line Plot")

slices <- c(10, 20, 30, 40)
labels <- c("A", "B", "C", "D")
percentages <- round(slices / sum(slices) * 100)
pie(slices, labels = paste(labels, percentages, "%"), main = "Pie Chart with Percentages", col = rainbow(length(slices)))

counts <- c(10, 20, 30, 40)
barplot(counts, names.arg = labels, col = "blue", main = "Bar Plot Example", xlab = "Categories", ylab = "Values")

set.seed(123)
data <- rnorm(100)
hist(data, col = "lightgreen", main = "Histogram", xlab = "Values", ylab = "Frequency")

boxplot(data, main = "Box Plot", ylab = "Values")

plot(x, y, main = "Scatter Plot", xlab = "X-axis", ylab = "Y-axis", pch = 19, col = "blue")
