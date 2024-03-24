library(dplyr)
library(ggpubr)
glimpse(markets)
#Box plots 
ggboxplot(donner,x="season",y="revenue",add="point")
ggboxplot(markets,x="season",y="expenditure",add="point")
#GLM 
model1=glm(season~revenue,data=markets,family=binomial)
model2=glm(season~revenue,data=markets,family=binomial(link=logit))
summary(model1)
summary(model2)
-0.14779/0.07065
fitted(model1,type="pearson")/df.residual(model1)
predict(model1)
resid(model1)
phihat=deviance(model1)/df.residual(model1)
deviuance(model1)
di=residuals(model1,type="deviance")
