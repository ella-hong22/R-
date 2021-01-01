
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)
mpg

mpg[c(65, 124, 131, 153, 212), "hwy"] <- NA

#[ 문제 1 ]
str(mpg)

mpg1 <- mpg %>% 
    group_by(drv) %>% 
    summarise(hwy, drv)
  
    
    
mpg1  
mpg1 <- mpg %>%  filter(!is.na(hwy)) %>% 
  group_by(drv) %>% 
  summarise(hwy, drv)    
mpg1 
