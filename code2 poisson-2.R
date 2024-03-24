#model fitting
#(1)

model=glm(death~months,data=aids,family=poisson)
m2=glm(death~months,data=aids,family=poisson(link=log))

#if the mean and var are not equal
m3=glm(death~months,data=aids,family=quasipoisson(link=log))
model2=update(model,family=quasipoisson(link=log))
summary(model)
summary(m3)
summary(model2)

#(2)
confint(model)

# fitted vlues of the response

fit=cbind(fitted(model,type="response"))
fit
P=cbind(predict(model,type="response"))
P
#predicted probability
predict(model,newdata=data.frame(months=1))
predict(model,newdata=data.frame(months=1),type="response")

#pearson residuals
Pearson=resid(model,type="pearson")
cbind(Pearson)

#deviance residual
resid(model,type="deviance")

#dispersion parameter
phi=sum(Pearson^2)/14
phi

#plot a hist graph
hist(aids$death)

library(ggplot2)
#plot a scatter plot with smoothness
ggplot(aids,aes(x=months,y=death))+
  geom_jitter()+
  geom_smooth(method="glm",method.args=list(family="poisson"))+
  labs(tittle="Death by month")
mean(aids$death)
var(aids$death)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             