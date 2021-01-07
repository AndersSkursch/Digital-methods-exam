library(ggplot2)
library(dplyr)
library(readxl)
Datamodified <- read_excel("~/Documents/Datamodified.xlsx")


## Cleaning up data. Here im making sure there are no missing data.
View(Datamodified)
is.na(Datamodified)
na.omit(Datamodified)
mean(Datamodified,na.rm=TRUE)


#### Here i show Estonia, Hungary, Poland and Latvia´s democracy score evolution over time.
ggplot(Datamodified, aes(x=Year,
                         y=Democracyscore,
                         color=Countryname))+
  labs(title ="Democracyscore over time", subtitle="Evolution of democracy score")+
  xlab("Year")+
  ylab("Democracy Score")+
  geom_line(size=1.5, alpha=0.8)+
  geom_point(size=2,alpha=0.8)


#### Here im making a graph to show how Poland has dropped with 2 scale points on their Judicial framework and independence score.
ggplot(Datamodified, aes(x=Year,
                         y=Judicialframeworkandindependence,
                         color=Countryname))+
  labs(title ="Judicial Framework and Independece score over time",subtitle = "Polands score has dropped by 2,75 scale points in 15 years")+
  xlab("Year")+
  ylab("Judicial Framework and Independence score")+
  geom_line(size=1.5, alpha=0.8)+
  geom_point(size=1.5, alpha=0.8)
  

#### Here im making a graph to show how Hungary has dropped with 2 scale points on their National Democratic Governance score.
ggplot(Datamodified, aes(x=Year,
                         y=Nationaldemocraticgovernance,
                         color=Countryname))+
  labs(title ="National Democratic Governance score",subtitle = "Hungarys score has dropped by 2,75 scale points in 15 years")+
  xlab("Year")+
  ylab("National Democratic Governance score")+
  geom_line(size=1.5, alpha=0.8)+
  geom_point(size=1.5, alpha=0.8)
