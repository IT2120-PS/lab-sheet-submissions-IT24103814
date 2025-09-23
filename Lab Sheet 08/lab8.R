setwd("D:\\SLIIT\\2nd year\\1st sem\\Probability and Statistics - IT2120\\lab\\lab8")

data<-read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data)

popmn<-mean(Nicotine)
popvar<-var(Nicotine)

samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(Nicotine,size= 5,replace= TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

samplemean<-mean(s.means)
samplevars<-var(s.means)

popmn
samplemean

truevar=popvar/5
samplevars


#exercise 
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

popmn<-mean(Weight.kg.)
popsd<-sd(Weight.kg.)

num_samples<-25
sample_size<-6

sample_means<-numeric(num_samples)
sample_sds<-numeric(num_samples)

for (i in 1:25){
  s<-sample(Weight.kg.,size=6,replace=TRUE)
  sample_means[i] <- mean(s)
  sample_sds[i]   <- sd(s)
}

sample_results <- data.frame(
  Sample = paste0("S", 1:num_samples),
  SampleMean = round(sample_means, 3),
  SampleSD   = round(sample_sds, 3)
)

mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)

theoretical_se <- popsd / sqrt(sample_size)

mean_of_sample_means
sd_of_sample_means
theoretical_se
