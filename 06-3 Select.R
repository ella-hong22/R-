##필요한 변수만 추출: column

#변수 추출
exam %>% select(math)
exam %>% select(english)

#여러 변수 추출
exam %>% select(math, class, english)
#변수 제외
exam %>%  select(-math, -english)


#----------------------------##
#dplyr 함수 조합
library(dplyr)

#class 가 1인 행만 추출한다음 english 추출
exam %>%  filter(class ==1) %>% select(english)

#가독성 
exam %>%  
  filter(class ==1) %>%
  select(english)

#일부 출력
exam %>% 
  select(id, math) %>% 
  head

exam %>% 
  select(id, math) %>% 
  head(10)
