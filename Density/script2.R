library(MVA)

####################

x <- matrix(rnorm(1000, 50, 0.05), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 0.1427566

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D1.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 0.1), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 0.3054657

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2,"5D2.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 0.2), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 0.5855692

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D3.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 0.25), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 0.7834726

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D4.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 0.3), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 0.8686502

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D5.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 0.5), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 1.478561

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D6.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 0.75), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 2.200004

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D7.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 0.85), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 2.455361

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D8.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 1), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 2.945438

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D9.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 1.25), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 3.727412

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D10.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 1.5), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 4.670333

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D11.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 1.75), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 5.341874

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D12.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 2), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 6.022112

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D13.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 3), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 8.927569

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D14.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 5), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 14.68095

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D15.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 10), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 29.73318

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D16.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 15), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 46.15029

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D17.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 20), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 59.13919

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D18.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 25), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 77.34154

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D19.csv", row.names = FALSE)

####################

x <- matrix(rnorm(1000, 50, 30), ncol=5)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 89.62701

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "5D20.csv", row.names = FALSE)



# newdata <- mydata[5:20,]

mydata <- read.csv("5Ddata.csv")

library("ggpubr")
ggscatter(newdata, x = "hubness", y = "density", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Hubness", ylab = "Density")