n=200
(age=round(runif(n=n,min=20,max=30)))
mean(age)


(gender=sample(x=c('m','f'),size=n,replace =T,prob = c(.7,.3)))
table(gender)
(batch=sample(x=c('2017','2018','2019'),size=n, replace =T, prob=c(.2,.3,.5)))
table(batch)
(cgpa=round(rnorm(n=n,mean=7,sd=.75),2))


range(cgpa)
barplot(height=)
(ug=round(rnorm(n=n,mean=70,sd=5),2))
range(ug)
(class12=round(rnorm(n=n,mean=70,sd=7),2))
range(class12)
(domain=sample(c('finance','marketing','operation','hr'),size=n,replace=T))
students=data.frame(age,gender,ug,class12,cgpa,batch,domain)
head(students)
table(students)
str(students)
(students$select=sample(c('placed','not placed'),size=n,replace=T,prob=c(.7,.3)))
table(students$select,students$domain)

(students$select=round(rnorm(n=n,mean=12,sd=1),2))


table(students$select)
(students$select=ifelse(students$select=='not placed','na','students$salary'))
head(students)
library(dplyr)

nrow(students)
table(students$domain)
table(students$cgpa)
table(students$gender,students$batch,students$domain)
hist(students$cgpa)
hist(students$cgpa,breaks=c(0,5.5,7.5,9.5,10))
hist(students$age,breaks=c(20,25,26,30))
hist(students$ug,breaks=c(0,60,80,85))

#ggplot


library(ggplot2)



ggplot(students,aes(x=gender,fill=gender))+geom_bar(stat='count')+geom_text(stat='count',aes(label=..count..))
ggplot(students,aes(x=domain,fill=domain))+geom_bar(stat='count')+geom_text(stat='count',aes(label=..count..))
ggplot(students,aes(x=batch,fill=domain))+geom_bar(stat='count')+geom_text(stat='count',aes(label=..count..),position=position_stack(),vjust=1)

ggplot(students,aes(x=batch,fill=domain))+geom_bar(stat='count')+geom_text(stat='count',aes(label=..count..),position=position_stack(),vjust=1)+facet_grid(~gender)

ggplot(students,aes(x=batch,fill=domain))+geom_bar(stat='count')+geom_text(stat='count',aes(label=..count..),position=position_stack(),vjust=1)+facet_grid(select~gender)

ggplot(students,aes(x=gender,fill=gender))+geom_bar(stat='count')+geom_text(stat='count',aes(label=..count..),position=position_stack(),vjust=1)+facet_grid(batch~domain)



#histogram
ggplot(students,aes(x=cgpa))+geom_histogram()
ggplot(students,aes(x=cgpa))+geom_histogram(breaks=c(0,5,7,9,10),fill=1:4)






library(dplyr)
