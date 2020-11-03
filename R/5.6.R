total <- array()
set.seed(1)
for (i in 1:1000){
  savings <- rnorm(1, 5, 4)
  market <- rnorm(1, 40000, 10000)
  total[i] <- savings * market
}

mean(total)
#193506.7
sd(total)
#182754