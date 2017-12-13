# http://www1.maths.lth.se/matstat/bioinformatics/software/R/library/mva/html/dist.html

library(MVA)
x <- matrix(rnorm(100), nrow=5)

# Number of items, mean, SD:
randomData <- matrix(rnorm(100,4,1), nrow=5)
rd2 <- data.frame(randomData)

# Examine
x2 <- as.data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))

x4 <- as.data.frame(x3)

rowMeans(x4)

# dist(x)
# dist(x, diag = TRUE)
# dist(x, upper = TRUE)

# Does Euclidian by default, but...
dist(x, method = "euclidean")

m <- as.matrix(dist(x))

m2 <- as.data.frame(m)

# d <- as.dist(m)
# print(d, digits = 3)

write.csv(m2, "test1.csv")
