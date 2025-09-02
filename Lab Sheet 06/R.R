setwd("C:\\Users\\IT24103814\\Desktop\\New folder")
dbinom(40,44,0.92)

pbinom(35,44,0.92,lower.tail = TRUE)

1- pbinom(37,44,0.92,lower.tail = TRUE)
pbinom(37,44,0.92,lower.tail= FALSE)


pbinom(42,44,0.92,lower.tail = TRUE)-pbinom(39,44,0.92,lower.tail = TRUE)


dpois(6,5)

ppois(6,5,lower.tail = FALSE)


##Exercise##
 
#part 01
#Binomial Distribution
# Here ,random variable x has binoialdistribution with n=50 and p=0.85

1- pbinom(47,50,0.85,lower.tail=TRUE)

pbinom(47,50,0.85,lower.tail = FALSE)

#part 02
#poisson distribution
#number of calls receive for per hour
#random variable X has poisson distribution with lambda=12

dpois(15,12)



