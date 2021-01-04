midwest  <- as.data.frame(ggplot2 ::midwest )
mpg  <- as.data.frame(ggplot2 ::mpg )
library(ggplot2)
ggplot(data = mpg, aes(x = cty, y = hwy))  +
  geom_point() 


ggplot(data = midwest, aes(x = poptotal, y = popasian))  +
  geom_point() +
  xlim(0,500000)+
  ylim(0,10000)

midwest$poptotal


#[ 문서 1 ]
#어떤 회사에서 생산한 “suv” 차종의 도시 연비가 높은지 알아보려고 한다.

df_mpg <- mpg %>% 
  select(manufacturer,class, cty) %>% 
  filter(class == 'suv') %>% 
  group_by(manufacturer) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty)) %>% 
  head(5)
df_mpg

ggplot(data = df_mpg, aes(x = reorder(manufacturer,-  mean_cty), y= mean_cty)) +geom_col()

#[ 문서 2 ]
#자동차 중에서 어떤 class(자동차 종류)가 가장 많은지 알아보려고 한다.

ggplot(data = mpg, aes(x = class)) +geom_bar()
 

#psavert(개인 저축률)가 시간에 따라 어떻게 변해 왔는지
ggplot(data= economics, aes(date, y = psavert)) + geom_line()

#class(자동차 종류)가 “compact”, “subcompact”, “suv” 인 자동차의 cty(도시 연비)가 어떻게 다른지 비교해 보려고 한다.


df_mpg <- mpg %>% 
  select(class) %>%  
  filter(class == 'suv' | class == 'compact' | class == 'subcompact') %>% 
  group_by(class) 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty)) 
df_mpg

ggplot(data= df_mpg, aes(x = class == 'suv' | class == 'compact' | class == 'subcompact', y = mpg$cty)) + geom_boxplot()



