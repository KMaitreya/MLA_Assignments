#loading pca_gsp dataset
data=read.csv("C:/Users/Maitreya/Coding&Misc/Datasets/pca_gsp.csv")
summary(data)


#covariance matrix
cov_matrix=cov(data[2:14])
cov_matrix
cor_matrix=cor(data[2:14])
cor_matrix


#eigen values and eigen vectors
cov_eigen=eigen(cov_matrix)
cov_eigen


#princomp and prcomp
princomp_pca=princomp(data[2:14])
summary(princomp_pca)

prcomp_pca=prcomp(data[2:14])
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
