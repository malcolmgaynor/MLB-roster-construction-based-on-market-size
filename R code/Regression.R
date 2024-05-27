#Multiple Linear Regression for baseball project

library(leaps) 
library(HH)

#Import data for eahc market class
Large <- read.csv("~/Downloads/Large.csv") 
Medium <- read.csv("~/Downloads/Medium.csv") 
Small <- read.csv("~/Downloads/Small.csv") 

#Linear regression

#Full models

largemodel=lm(Win..~ Total.Payroll+Catcher..+Infield..+Outfield..+Pitcher..+CBT.Space+X..players.on.arb+X..players.aquired.via.trade+X..resigned.extended+resigned.extended...spent+X..free.agents.signed+free.agent...spent+Batter.Average.Age+Pitcher.average.age+X..Rookies, data=Large)
summary(largemodel)

mediummodel=lm(Win..~ Total.Payroll+Catcher..+Infield..+Outfield..+Pitcher..+CBT.Space+X..players.on.arb+X..players.aquired.via.trade+X..resigned.extended+resigned.extended...spent+X..free.agents.signed+free.agent...spent+Batter.Average.Age+Pitcher.average.age+X..Rookies, data=Medium)
summary(mediummodel)

smallmodel=lm(Win..~ Total.Payroll+Catcher..+Infield..+Outfield..+Pitcher..+CBT.Space+X..players.on.arb+X..players.aquired.via.trade+X..resigned.extended+resigned.extended...spent+X..free.agents.signed+free.agent...spent+Batter.Average.Age+Pitcher.average.age+X..Rookies, data=Small)
summary(smallmodel)



#Models to predict winning percentage

#Large Model
MSE = (summary(largemodel)$sigma)^2
step(largemodel, scale=MSE, direction="backward")
Flarge=lm(Win.. ~ Pitcher.. + CBT.Space + Pitcher.average.age, data=Large)
summary(Flarge)

all = regsubsets(Win..~ Total.Payroll+Catcher..+Infield..+Outfield..+Pitcher..+CBT.Space+X..players.on.arb+X..players.aquired.via.trade+X..resigned.extended+resigned.extended...spent+X..free.agents.signed+free.agent...spent+Batter.Average.Age+Pitcher.average.age+X..Rookies, data=Large)
summaryHH(all)
largesubsets=lm(Win..~ Catcher..+Pitcher..+CBT.Space+X..resigned.extended+X..free.agents.signed+free.agent...spent+Pitcher.average.age, data=Large)
summary(largesubsets)

#Medium Model
MSE = (summary(mediummodel)$sigma)^2
step(mediummodel, scale=MSE, direction="backward")
Fmedium=lm(Win.. ~ Total.Payroll + Pitcher.. + X..resigned.extended + resigned.extended...spent + 
            Batter.Average.Age + X..Rookies, data=Medium)
summary(Fmedium)

all = regsubsets(Win..~ Total.Payroll+Catcher..+Infield..+Outfield..+Pitcher..+CBT.Space+X..players.on.arb+X..players.aquired.via.trade+X..resigned.extended+resigned.extended...spent+X..free.agents.signed+free.agent...spent+Batter.Average.Age+Pitcher.average.age+X..Rookies, data=Medium)
summaryHH(all)
mediumsubsets=lm(Win..~ Total.Payroll+Catcher..+Pitcher..+X..resigned.extended+resigned.extended...spent+Batter.Average.Age+X..Rookies, data=Medium)
summary(mediumsubsets)

#Small Model
MSE = (summary(smallmodel)$sigma)^2
step(smallmodel, scale=MSE, direction="backward")
Fsmall=lm(Win.. ~ Total.Payroll + Infield.. + Outfield.. + Pitcher.. + 
             X..players.aquired.via.trade + X..Rookies, data=Medium)
summary(Fsmall)

all = regsubsets(Win..~ Total.Payroll+Catcher..+Infield..+Outfield..+Pitcher..+CBT.Space+X..players.on.arb+X..players.aquired.via.trade+X..resigned.extended+resigned.extended...spent+X..free.agents.signed+free.agent...spent+Batter.Average.Age+Pitcher.average.age+X..Rookies, data=Small)
summaryHH(all)
smallsubsets=lm(Win..~ Total.Payroll+Infield..+Outfield..+Pitcher..+X..players.aquired.via.trade+X..Rookies, data=Small)
summary(smallsubsets)

#Check all models for normality condition
plot(largesubsets)
plot(mediumsubsets)
plot(smallsubsets)

--------------------------------------------------
  
#Models to predict playoff results 

#Large Model
all = regsubsets(Where.did.they.lose~ Total.Payroll+Catcher..+Infield..+Outfield..+Pitcher..+CBT.Space+X..players.on.arb+X..players.aquired.via.trade+X..resigned.extended+resigned.extended...spent+X..free.agents.signed+free.agent...spent+Batter.Average.Age+Pitcher.average.age+X..Rookies, data=Large)
summaryHH(all)
largesubsets=lm(Where.did.they.lose~ Infield..+Outfield..+Pitcher..+CBT.Space+X..resigned.extended+free.agent...spent+Batter.Average.Age+X..Rookies, data=Large)
summary(largesubsets)

#Medium Model
all = regsubsets(Where.did.they.lose~ Total.Payroll+Catcher..+Infield..+Outfield..+Pitcher..+CBT.Space+X..players.on.arb+X..players.aquired.via.trade+X..resigned.extended+resigned.extended...spent+X..free.agents.signed+free.agent...spent+Batter.Average.Age+Pitcher.average.age+X..Rookies, data=Medium)
summaryHH(all)
mediumsubsets=lm(Where.did.they.lose~  Infield..+Outfield..+Pitcher..+CBT.Space+Pitcher.average.age+X..Rookies, data=Medium)
summary(mediumsubsets)

#Small Model
all = regsubsets(Where.did.they.lose~ Total.Payroll+Catcher..+Infield..+Outfield..+Pitcher..+CBT.Space+X..players.on.arb+X..players.aquired.via.trade+X..resigned.extended+resigned.extended...spent+X..free.agents.signed+free.agent...spent+Batter.Average.Age+Pitcher.average.age+X..Rookies, data=Small)
summaryHH(all)
smallsubsets=lm(Where.did.they.lose~ Total.Payroll+Infield..+Outfield..+X..players.aquired.via.trade+resigned.extended...spent+X..Rookies, data=Small)
summary(smallsubsets)

#Check all models for normality condition
plot(largesubsets)
plot(mediumsubsets)
plot(smallsubsets)
