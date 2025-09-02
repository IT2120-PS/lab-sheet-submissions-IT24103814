
getwd()

## 1 ##
Delivery_Times <-read.table("Exercise - Lab 05.txt", header = TRUE)
fix(Delivery_Times)

attach(Delivery_Times)

names(Delivery_Times) <-c("time")
attach(Delivery_Times)



## 2 ##
hist(time,main = "Histogram for Delivery Times")

histogram <- hist(time,main = "Histogram for Delivery Times",
                  breaks = seq(20,70,length = 7),right = FALSE)


## 3 ##
#The histogram of delivery times shows that most delivery times fall in the middle range (around 40–55 minutes), 
#and the shape is approximately symmetric,close to a bell-shaped distribution.




## 4 ##

cum.time <-cumsum(time)
breaks <- round(histogram$breaks)
new <- c()

for(i in 1:length(breaks)){
  if(i == 1){
    new[i] = 0
  }else{
    new[i] = cum.time[i-1]
  }
}

plot(breaks,new,type = 'l',main = "Cumulative Frequency Polygon for Time",
     xlab= "Time",ylab = "Cumulative Frequency",ylim= c(0,max(cum.time)))



