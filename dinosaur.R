library(tidyverse)
datasaurus <- read_tsv("DatasaurusDozen.tsv")
summary(datasaurus)

datasaurus %>% 
  group_by(dataset) %>% 
  summarise(
    mean_x = mean(x),
    mean_y = mean(y),
    sd_x = sd(x),
    sd_y = sd(y),
    correlation = cor(x,y)
  )
ggplot(data=datasaurus)+
  geom_point(mapping = aes(x=mean_x,y=mean_y,colour=dataset))