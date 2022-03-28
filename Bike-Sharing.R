### Bike Sharing



library(tidyverse)
bikes <- read_csv("C:/Data/bikes.csv")



skimr::skim(bikes)




write.csv(bikes,"bikerentals.csv",row.names=FALSE)



bikes %>%
  mutate(Month = substring(bikes$`Start date`,4,4))%>%
  ggplot() + aes(x = Month , y = Duration) + geom_boxplot(aes(color = `Member type`)) + labs(title = "Month and duration by Member type")

ggsave("Duration by member.png", width = 10, height = 10)
