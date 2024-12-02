install.packages('ggplot2')
library(ggplot2)
data=data.frame(
  sqft=c(500,1000,1500,2000,2500),
  price=c(150000,200000,250000,300000,350000)
)
ggplot(data,aes(x=sqft,y=price))+
  geom_point(color="blue",size=3)+
  geom_smooth(method = 'lm',col="red")
  labs(title="linear reg square footage vs price",x="square footage",y="price")
model<-lm(price~sqft,data=data)
summary(model)


new_data<-data.frame(sqft=c(800))0
predicted_price <- predict(model,new_data)
print(predicted_price)