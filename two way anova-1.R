install.packages("lme4")
install.packages("lmerTest")
library(lme4)
library(lmerTest)
#(1) visualise the data with an interaction plot
with(quality,interaction.plot(x.factor = batch, 
                              trace.factor = employee,
                              response=score))

#(2) fit the random effect model
fit1=aov(score~employee*batch, data=quality)
summary(fit1)
fit2=lmer(score~(1|employee)+(1|batch)+(1|employee:batch),data=quality)
summary(fit2)
