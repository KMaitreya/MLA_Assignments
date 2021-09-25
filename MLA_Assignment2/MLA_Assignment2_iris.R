#loading iris dataset
data(iris)
summary(iris)


#covariance matrix
cov_matrix=cov(iris[1:4])
cov_matrix


#eigen values and eigen vectors
cov_eigen=eigen(cov_matrix)
cov_eigen


#princomp and prcomp
princomp_pca=princomp(iris[1:4])
summary(princomp_pca)

prcomp_pca=prcomp(iris[1:4])
summary(prcomp_pca)

# Comparing variance values
cov_eigen$values
princomp_pca$sdev^2
prcomp_pca$sdev^2

#plotting the data(princomp)
plot(princomp_pca)
screeplot(princomp_pca, type = "lines")
biplot(princomp_pca)

#plotting the data(prcomp)
plot(prcomp_pca)
screeplot(prcomp_pca, type = "lines")
biplot(prcomp_pca)
