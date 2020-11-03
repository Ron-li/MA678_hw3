set.seed(1)
earnings <- replicate(100000, sum(rnorm(20, 500000, 200000))-20*300000)
data.frame(Expected_net_gain = mean(earnings), The_probability = sum(earnings<0)/length(earnings))
