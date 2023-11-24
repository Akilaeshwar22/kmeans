# Example: K-means Clustering in R

# Install the ggplot2 package if not already installed
install.packages("ggplot2")

# Load necessary libraries
library(ggplot2)
library(cluster)

# Generate a random dataset with two features
set.seed(123)
data <- data.frame(
  x = rnorm(200, mean = 0, sd = 1),
  y = rnorm(200, mean = 0, sd = 1)
)

# Perform K-means clustering with k=3
k <- 3
kmeans_result <- kmeans(data, centers = k)

# Visualize the clusters using a scatter plot
ggplot(data, aes(x, y, color = as.factor(kmeans_result$cluster))) +
  geom_point(size = 3) +
  geom_point(data = as.data.frame(kmeans_result$centers), aes(x, y), color = "black", size = 5, shape = 8) +
  labs(title = "K-means Clustering (k=3)", x = "X-axis", y = "Y-axis") +
  scale_color_discrete(name = "Cluster") +
  theme_minimal()
# Assuming you have already performed K-means clustering with kmeans_result

# Add cluster assignments to the original data
clustered_data <- cbind(data, Cluster = kmeans_result$cluster)

# Display the first few rows of the clustered data
head(clustered_data)





