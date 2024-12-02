library(class)
library(ggplot2)


data<-iris

set.seed(123)
train_index<-sample(1:nrow(data),0.7 * nrow(data))
train<-data[train_index,]
test<-data[-train_index,]

#train knn model
k<-3
prediction<-knn(train[,-5],test[-5],train$Species,k)

accuracy<-mean(prediction==test$Species)
print(paste("Accuracy:",round(accuracy,2)))

test$Predicted<- prediction
ggplot(test,aes(x=Petal.Length,y=Petal.Width,color=Predicted,shape=Species))+
  geom_point(size=3)+
  labs(title="KNN Classification Results",x="Petal Length",y="Peatl Width")+
  theme_minimal()





