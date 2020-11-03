library(truncnorm)


#10.3(a)
n <- 100
a <- 2
b <- 3
count <- 0
set.seed(3)
for(i in 1:1000){
  x <- runif(n, 0, 10)
  error <- rnorm(n, 0, 1)
  y <- a + b*x + error
  fit <- lm(y~x)
  interval <- c(coef(fit)[2] - 2*summary(fit)$cov.unscaled[4],
                coef(fit)[2] + 2*summary(fit)$cov.unscaled[4])
  if(interval[1]<3 && interval[2]>3){
    count <- count+1
  }
}
data.frame(Numbers_of_contain = 1000-count, Probability = (1000-count)/1000)

#11.3(b)
set.seed(3)
count <- 0
for(i in 1:1000){
  x <- runif(n, 0, 10)
  error <- c(rtruncnorm(n/2, a=1, b=5, mean=0, sd=1),
             rtruncnorm(n/2, a=1, b=5, mean=4, sd=1))
  y <- a + b*x + error
  fit <- lm(y~x)
  interval <- c(coef(fit)[2] - 2*summary(fit)$cov.unscaled[4],
                coef(fit)[2] + 2*summary(fit)$cov.unscaled[4])
  if(interval[1]<3 && interval[2]>3){
    count <- count+1
  }
}
data.frame(Numbers_of_contain = 1000-count, Probability = (1000-count)/1000)
