library(dplyr)
library(ggplot2)
library(rsample)
library(earth)
library(caret)
library(vip)
library(pdp)


dataMLB1 = read.csv(file=file.choose())
colnames(dataMLB1)

formars1<-data.frame(dataMLB1$Total.Payroll,dataMLB1$Win..,dataMLB1$Catcher..,dataMLB1$Infield..,dataMLB1$Outfield..,dataMLB1$Pitcher..,dataMLB1$CBT.Space,
       dataMLB1$X..players.on.arb,dataMLB1$X..players.aquired.via.trade,dataMLB1$X..resigned.extended,dataMLB1$resigned.extended...spent,dataMLB1$X..free.agents.signed,
       dataMLB1$free.agent...spent,dataMLB1$Batter.Average.Age,dataMLB1$Pitcher.average.age,dataMLB1$X..Rookies)
View(formars1)

colnames(formars1)

mars1 <- earth(dataMLB1.Win..~., data = formars1)
print(mars1)
summary(mars1)
coef(mars1)
plot(mars1,1)

vip(mars1,5)

mars2 <- earth(dataMLB1.Win..~., data = formars1,degree = 2)
print(mars2)
summary(mars2)
coef(mars2)
plot(mars2, which = 1)

vip(mars2)


(dataMLB2$Where.did.they.lose)
(dataMLB1$Where.did.they.lose)
(dataMLB3$Where.did.they.lose)

dataMLB2 = read.csv(file=file.choose())
colnames(dataMLB2)

formars2<-data.frame(dataMLB2$Total.Payroll,dataMLB2$Win..,dataMLB2$Catcher..,dataMLB2$Infield..,dataMLB2$Outfield..,dataMLB2$Pitcher..,dataMLB2$CBT.Space,
                     dataMLB2$X..players.on.arb,dataMLB2$X..players.aquired.via.trade,dataMLB2$X..resigned.extended,dataMLB2$resigned.extended...spent,dataMLB2$X..free.agents.signed,
                     dataMLB2$free.agent...spent,dataMLB2$Batter.Average.Age,dataMLB2$Pitcher.average.age,dataMLB2$X..Rookies)
View(formars2)

colnames(formars2)

mars1.2 <- earth(dataMLB2.Win..~., data = formars2)
print(mars1.2)
summary(mars1.2)
coef(mars1.2)
plot(mars1.2, which = 1)

vip(mars1.2,5)

mars2.2 <- earth(dataMLB2.Win..~., data = formars2,degree = 2)
print(mars2.2)
summary(mars2.2)
coef(mars2.2)
plot(mars2.2, which = 1)

vip(mars2.2)



















dataMLB3 = read.csv(file=file.choose())
colnames(dataMLB3)

formars3<-data.frame(dataMLB3$Total.Payroll,dataMLB3$Win..,dataMLB3$Catcher..,dataMLB3$Infield..,dataMLB3$Outfield..,dataMLB3$Pitcher..,dataMLB3$CBT.Space,
                     dataMLB3$X..players.on.arb,dataMLB3$X..players.aquired.via.trade,dataMLB3$X..resigned.extended,dataMLB3$resigned.extended...spent,dataMLB3$X..free.agents.signed,
                     dataMLB3$free.agent...spent,dataMLB3$Batter.Average.Age,dataMLB3$Pitcher.average.age,dataMLB3$X..Rookies)
View(formars3)

colnames(formars3)

mars1.3 <- earth(dataMLB3.Win..~., data = formars3)
print(mars1.3)
summary(mars1.3)
coef(mars1.3)
plot(mars1.3, which = 1)

vip(mars1.3,2)

mars2.3 <- earth(dataMLB3.Win..~., data = formars3,degree = 2)
print(mars2.3)
summary(mars2.3)
coef(mars2.3)
plot(mars2.3, which = 1)


vip(mars2.3)














# Different response variable

colnames(dataMLB1)
formars1<-data.frame(dataMLB1$Total.Payroll,dataMLB1$Where.did.they.lose,dataMLB1$Catcher..,dataMLB1$Infield..,dataMLB1$Outfield..,dataMLB1$Pitcher..,dataMLB1$CBT.Space,
                     dataMLB1$X..players.on.arb,dataMLB1$X..players.aquired.via.trade,dataMLB1$X..resigned.extended,dataMLB1$resigned.extended...spent,dataMLB1$X..free.agents.signed,
                     dataMLB1$free.agent...spent,dataMLB1$Batter.Average.Age,dataMLB1$Pitcher.average.age,dataMLB1$X..Rookies)
View(formars1)

colnames(formars1)

mars1 <- earth(dataMLB1.Where.did.they.lose~., data = formars1)
print(mars1)
summary(mars1)
coef(mars1)
plot(mars1, which = 1)

vip(mars1,6)

mars2 <- earth(dataMLB1.Where.did.they.lose~., data = formars1,degree = 2)
print(mars2)
summary(mars2)
coef(mars2)
plot(mars2, which = 1)

vip(mars2)





formars2<-data.frame(dataMLB2$Total.Payroll,dataMLB2$Where.did.they.lose,dataMLB2$Catcher..,dataMLB2$Infield..,dataMLB2$Outfield..,dataMLB2$Pitcher..,dataMLB2$CBT.Space,
                     dataMLB2$X..players.on.arb,dataMLB2$X..players.aquired.via.trade,dataMLB2$X..resigned.extended,dataMLB2$resigned.extended...spent,dataMLB2$X..free.agents.signed,
                     dataMLB2$free.agent...spent,dataMLB2$Batter.Average.Age,dataMLB2$Pitcher.average.age,dataMLB2$X..Rookies)

View(formars2)

colnames(formars2)

mars1.2 <- earth(dataMLB2.Where.did.they.lose~., data = formars2)
print(mars1.2)
summary(mars1.2)
coef(mars1.2)
plot(mars1.2, which = 1)

vip(mars1.2,1)

mars2.2 <- earth(dataMLB2.Where.did.they.lose~., data = formars2,degree = 2)
print(mars2.2)
summary(mars2.2)
coef(mars2.2)
plot(mars2.2, which = 1)

vip(mars2.2)





















formars3<-data.frame(dataMLB3$Total.Payroll,dataMLB3$Where.did.they.lose,dataMLB3$Catcher..,dataMLB3$Infield..,dataMLB3$Outfield..,dataMLB3$Pitcher..,dataMLB3$CBT.Space,
                     dataMLB3$X..players.on.arb,dataMLB3$X..players.aquired.via.trade,dataMLB3$X..resigned.extended,dataMLB3$resigned.extended...spent,dataMLB3$X..free.agents.signed,
                     dataMLB3$free.agent...spent,dataMLB3$Batter.Average.Age,dataMLB3$Pitcher.average.age,dataMLB3$X..Rookies)
View(formars3)

colnames(formars3)

mars1.3 <- earth(dataMLB3.Where.did.they.lose~., data = formars3)
print(mars1.3)
summary(mars1.3)
coef(mars1.3)
plot(mars1.3, which = 1)

vip(mars1.3,3)

mars2.3 <- earth(dataMLB3.Where.did.they.lose~., data = formars3,degree = 2)
print(mars2.3)
summary(mars2.3)
coef(mars2.3)
plot(mars2.3, which = 1)

vip(mars2.3)







