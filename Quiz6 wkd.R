[ 문제 06-5-1 ]

mpg1 <-  mpg %>% 
  mutate(total = cty + hwy ) %>%  #총합 변수 추가 
  head # 일부 추출 

[ 문제 06-5-2 ]
mpg2 <-  mpg1 %>% 
  mutate(mean = total/2 ) %>%  #총합 변수 추가 
  head # 일부 추출 
mpg2

[ 문제 06-5-3 ]

mpg2 %>%  arrange(desc(mean)) %>% head(3)

[ 문제 06-5-4 ]
mpg3 <- mpg %>% 
  mutate(total = cty + hwy,
         mean = total/2) %>% 
  arrange(desc(mean)) %>% head(3)
mpg3
