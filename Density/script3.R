library(MVA)

####################

x <- matrix(rnorm(2000, 50, 0.05), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 0.3008012

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D1.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 0.1), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 0.6357493

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2,"20D2.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 0.2), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 1.235096

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D3.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 0.25), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 1.511662

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D4.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 0.3), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 1.90205

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D5.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 0.5), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 3.138649

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D6.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 0.75), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 4.568908

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D7.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 0.85), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 5.140225

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D8.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 1), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 6.270466

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D9.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 1.25), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 7.795185

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D10.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 1.5), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 9.405675

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D11.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 1.75), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 11.06962

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D12.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 2), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 12.56801

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D13.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 3), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 19.00258

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D14.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 5), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 31.70717

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D15.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 10), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 61.86532

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D16.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 15), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 94.79673

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D17.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 20), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 124.4367

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D18.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 25), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 159.945

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D19.csv", row.names = FALSE)

####################

x <- matrix(rnorm(2000, 50, 30), ncol=20)
x2 <- data.frame(x)

x3 <- as.list(dist(x, diag = FALSE, upper = FALSE))
x4 <- as.data.frame(x3)
rowMeans(x4) # 184.376

m <- as.matrix(dist(x))
m2 <- as.data.frame(m)

write.csv(m2, "20D20.csv", row.names = FALSE)



# newdata <- mydata[1:15,]

mydata <- read.csv("20Ddata.csv")

library("ggpubr")
ggscatter(newdata, x = "hubness", y = "density", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Hubness", ylab = "Density")