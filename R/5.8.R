#5.8(a)
set.seed(10)
est <- rnorm(1000, 0.1, 0.17)
for(i in 1:1000){
  if(i == 1) effects=rnorm(127, est[i], 0.17)
  else effects=cbind(effects, rnorm(127, effects[i], 0.17))
}

#5.8(b)
bottom <- array()
top <- array()
for (i in 1:1000){
  bottom[i] <- qnorm(0.025, mean(effects[,i]), sd(effects[,i]))
  top[i] <- qnorm(1-0.025, mean(effects[,i]), sd(effects[,i]))
}
df <- data.frame(interval_bottom = bottom, interval_top = top)
sum(df$interval_bottom<=0.1 & df$interval_top>=0.1)

#5.8(c)
data.frame(mean=mean(est), sd=sd(est))


