library('dplyr')

head(mtcars)
mtcars%>%filter(gear==2& mpg>20)
mtcars%>%arrange(hp)
mtcars%>%top_n(1,hp)
mtcars%>%top_n(-1,hp)
mtcars%>%top_n(-3,hp)
mtcars%>%top_n(4,hp)
mtcars%>%filter(gear==3)%>%top_n(3,hp)
mtcars%>%group_by(gear)%>% summarise(total=n())
mtcars%>%group_by()
mtcars%>%group_by(gear)%>% summarise(total=n(), dency= mean(mpg) , rish=max(hp),geeta=median(wt))


mtcars%>% arrange(am,mpg)
mtcars%>% group_by(am,mpg)%>% top_n(1,wt)
mtcars%>% sample_n(2)
mtcars%>% sample_frac(.2)


(data=trunc(rnorm(24,mean=60,sd=10)))
(m1=matrix(data,nrow=6))

colSums(m1)
rowSums(m1)
apply(X=m1,MARGIN = 2,FUN = sum)
apply(X=m1,MARGIN = 2,FUN = sd)
apply(X=m1,MARGIN = 2,FUN = max)

?lapply
  
  
lapply(X=m1,FUN = sum)
A=1:5;B=4:9;C=5:10
list1=list(A,B,C)
list1
lapply(X=list1, FUN = mean)
sapply(X=list1, FUN = mean)







library(reshape2)
library(xlsx)





(rollno=1:5)
(gender=sample(c('m','f'),size = 5,replace = T))


sub1=trunc(rnorm(5,60,10))
sub1
sub2=trunc(rnorm(5,65,5))
sub2
sub3=trunc(rnorm(5,70,3))
sub3
students

students=data.frame(rollno,sub1,sub2,sub3,gender)
students




f=file.choose()

longdata=melt(students,id.vars = c('rollno','gender'),variable.name = 'subject',value.name='marks')
longdata






#missing values 
df= data.frame(A=c(2,NA,9,NA),B=c(4,NA,55,60),C=c(3,4,11,44))
df
is.na(df)
any(is.na(df))
sum(is.na(df))
summary(df)
complete.cases(df)
df[complete.cases(df),]
df=na.omit(df)
df
(df_titanic=read.csv(file = "TitanicDataMissingValues.csv"))
dim(df_titanic)
(list.na=colnames(df_titanic))




View(mtcars)
(cylinders=table(mtcars$cyl))
(barplot(height=table(mtcars$wt)))
(barplot(height=table(mtcars$am)))
?xlab

(barplot(height=table(mtcars$cyl),col=1:7,horiz = F))



polygon(d,col="red")
install.packages("sm")

barplot(height = table)


