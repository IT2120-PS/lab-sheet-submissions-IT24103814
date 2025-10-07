setwd("D:\\SLIIT\\2nd year\\1st sem\\Probability and Statistics - IT2120\\lab\\lab9")


x<-c(3,7,11,0,7,0,4,5,6,2)
t.test(x,mu = 3)

Weight<-c(17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)
t.test(Weight ,mu=25, alternative="less")

res <- t.test(Weight, mu=25, alternative= "less")

res$statistic
res$p.value
res$conf.int

y <- rnorm(30, mean=9.8, sd =0.05)


t.test(y, mu=10 ,alternative= "greater")


sample <- rnorm(25,mean=45,sd=2)
sample
t.test(sample,mu =46,alternative = "less",conf.level = 0.95)
