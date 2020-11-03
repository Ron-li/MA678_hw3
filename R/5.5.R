

z <- array()
#create 1000 simulations of x-y
set.seed(1)
for (i in 1:1000){
  a <- rnorm(100, 69.1, 2.9)
  b <- rnorm(100, 63.7, 2.7)
  x <- mean(a)
  y <- mean(b)
  z[i] <- x-y
}

#plot x-y histgram
hist(z)

#compute the mean and standard deviation of the distribution of x-y
df <- data.frame(mean(z), sd(z))
colnames(df) <- c("mean", "sd")
df

#campare to their exact values
true_mean <- 69.1-63.7
true_sd <- sqrt((2.9^2 + 2.7^2)/100)
means <- c(true_mean, mean(z))
sds <- c(true_sd, sd(z))
df <- data.frame(means, sds)
rownames(df) <- c("exact values", "simulation values")
df



