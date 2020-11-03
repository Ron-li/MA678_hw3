library(rstanarm)
#10.3
set.seed(1)
var1 <- rnorm(1000, 0, 1)
var2 <- rnorm(1000, 0, 1)
#run a regression 
fit <- stan_glm(var2~var1, refresh = 0)
coef(fit)[2]
#slope coefficient = 0.0067
#No, the slope coefficient is not "statistically significant"

#10.4
set.seed(1)
z_scores <- rep(NA, 100)
for (k in 1:100){
  var1 <- rnorm(1000, 0, 1)
  var2 <- rnorm(1000, 0, 1)
  fake <- data.frame(var1, var2)
  fit <- stan_glm(var2~var1, data = fake, refresh = 0)
  z_scores[k] <- coef(fit)[2]/se(fit)[2]
}

df <- data.frame(z_scores)
df1 <- subset(df, z_scores > 2 & z_scores < -2)
length(df1)
#1
#There is only one z_score exceed 2 in absolute value. 
