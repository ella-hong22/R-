mpg[c(10, 14, 58, 93), "drv"] <- "k"
mpg[c(29, 43, 129, 203), "cty"] <- c(3, 3, 39, 42)

table(mpg$drv)
table(mpg$cty)

head(mpg$drv)

#결측치 처리 
mpg$drv <- ifelse(mpg$drv == 'k', NA, mpg$drv)
#또는 
mpg$drv <- ifelse(mpg$drv %in% c('4','f','r'), mpg$drv, NA)


boxplot(mpg$cty)
#숫자를 알고 싶을때 (최소 최대 사분위)
boxplot(mpg$cty)$stats
#이상치제거
mpg$cty<- ifelse(mpg$cty <9 | mpg$cty > 26, NA, mpg$cty)

library(ggplot2)
library(dplyr)
#분석하기
mpg %>% 
  filter(!is.na(drv) & !is.na(cty)) %>% 
  group_by(drv) %>% 
  summarise(mean_cty = mean(cty, na.rm=T))

