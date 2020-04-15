rm(list = ls())
cars<-mtcars

library(tidyverse)

p1<-ggplot(cars%>%mutate(model=rownames(cars)),aes(x=hp,y=mpg,color=model))+
  geom_point()+
  geom_label(aes(label=model))+
  theme(legend.position = "none")

ggsave("figures/car_plot1.png",plot = p1,device = "png",width = 13,height = 6)
