library(e1071)
library(ggplot2)


#create dataset
data<-data.frame(
  color=c('Red','Red','orange','Red','orange'),
  size=c('Big','Small','Big','Big','small'),
  label=c('Apple','Apple','Orange','Apple','orange')
)

data$color<-as.factor(data$color)
data$size<-as.factor(data$size)
data$label<-as.factor(data$label)
typeof(data$color)

model<- naiveBayes(label ~color +size,data=data)

testdata<-data.frame(
  color = as.factor('Red'),
  size=as.factor('Big')
)

prediction<-predict(model,testdata)
print(testdata)
print(prediction)


