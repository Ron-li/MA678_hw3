#4.6(a)
birthdata <- c(.4777,.4875,.4859,.4754,.4874,.4864,.4813,.4787,.4895,.4797,.4876,.4859,
               .4857,.4907,.5010,.4903,.4860,.4911,.4871,.4725,.4822,.4870,.4823,.4973)
data.frame(Sd = sd(birthdata), Expected_sd = sqrt(3900*0.5*0.5/3900^2))

#4.6(b)
#H_0:sigma^2 = 3900*0.5*0.5/3900^2   H_1:sigma^2 \nequal 3900*0.5*0.5/3900^2
#(n-1)S^2/sigma^2 ~ x_{n-1}^2
test_stat <- 23*sd(birthdata)^2/(3900*0.5*0.5/3900^2)
data.frame(Test_statistic=test_stat,interval_bottom = qchisq(0.05/2, 23), interval_top = qchisq(1-0.05/2, 23))
#I accept the hypothesis. So this difference is not small enough to be explained by random variation.
