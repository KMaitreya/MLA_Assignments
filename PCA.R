
iris_data <- iris

summary(iris_data)

covmatrix <- cov(iris_data[,1:4])
covmatrix

eigenvector <- eigen(covmatrix)
eigenvector

PCA_data <- princomp(iris_data[,1:4])
summary(PCA_data)
str(PCA_data)

PCA_data_1 <- prcomp(iris_data[,1:4])
summary(PCA_data_1)
str(PCA_data_1)

# Comparing variance values
eigenvector$values
PCA_data$sdev^2
PCA_data_1$sdev^2

plot(PCA_data)
screeplot(PCA_data, type = "lines")
biplot(PCA_data)

plot(PCA_data_1)
screeplot(PCA_data_1, type = "lines")
biplot(PCA_data_1)
