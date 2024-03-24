#call library
library(dplyr)
library(ggpubr)

#Box plots 
ggboxplot(donner,x="Status",y="Age",add="point")
ggboxplot(donner,x="Status",y="Sex",add="point")

#GLM
Status1=factor(donner$Status,labels=c("0","1"))
#Status=as.numeric(donner$Status,labels=c("0","1"))
m1=glm(Status1~Age*Sex,data=donner,family=binomial(link=logit))
summary(m1)
#m1=glm(Status~Age,data=donner,family=binomial(link=logit))

#wald chi square statistic
z1_square=(-2.220)^2
z2_square=(-2.038)^2
z3_square=(1.714)^2
fitted(m1)
predict(m1)
