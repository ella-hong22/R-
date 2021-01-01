library(dplyr)
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)
mpg

mpg4<- mpg %>%  filter(displ <=4)
mean(mpg4$hwy)

mpg5<- mpg %>%  filter(displ >=5)
mean(mpg5$hwy)

#배기랑 4이하인 자동차가연비가 좋음

#[ 문제 06-2-2 ]

audi <- mpg %>%  filter(manufacturer == "audi")
toyota <- mpg %>%  filter(manufacturer == "toyota")

mean(audi$cty) #17.61111
mean(toyota$cty) #18.52941
#토요타가 연비가 좋음

#[ 문제 06-2-3 ] “chevrolet”, “ford”, “honda” 자동차의 고속도로 연비 평균을 알아보려고 한다.
#이 회사들의 데이터를 추출한 후 hwy 전체 평균을 구하라.

exam %>%  filter(class ==1 | class ==3 | class ==5)

mpg2 <- mpg %>% filter(manufacturer == "chevrolet" | manufacturer == "ford" |manufacturer == "honda" )
ford <- mpg %>% filter(manufacturer == "ford")
honda <- mpg %>% filter(manufacturer == "honda")

mean(mpg2$hwy) # 22.50943

a <- (mean(ford$hwy)+ mean(chevrolet$hwy)+mean(honda$hwy))/3  #24.60343
가중치로 인해 값이 다름.

a

length(chevrolet$hwy)
