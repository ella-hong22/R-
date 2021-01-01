##집단별로 요약하기 ##

#샘플 데이터 읽어서 데이터 프레임 생성

exam <-  read.csv("csv_exam4.csv")

#math 평균 산출
#basic
mean_math = mean(exam$math)
mean_math

#dplyr
exam %>%  summarise(mean_math = mean(math))

#집단별로 요약 - 단독은 효과 없음
exam %>%  group_by(class)

#집단별로 요약
exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math))

#여러 요약 통계량 한번에 산출하기
exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math),
            sum_math = sum(math),
            median_math = median(math),
            n = n())

#-----------------------

library(ggplot2)

mpg <-  as.data.frame(ggplot2 :: mpg)

#각 집단별로 다시 집단 나누기
#회사별로 집단을 나눈 후 다시 구동 방식별로 나눠서 도시 연비 평균 구하기
mpg %>% 
  group_by(manufacturer, drv) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  head(10)

## 회사별로 "suv" 자동차의 도시 및 고속도로 통합 연비 평균 을 구해
#내림차순으로 정렬하고, 1~5위까지 출력하기

mpg %>% 
  group_by(manufacturer) %>% 
  filter(class == "suv") %>% #suv 추출
  mutate(tot = (cty+hwy)/2) %>%          #통합 연비 변수 생성
  summarise(mean_tot = mean(tot)) %>%    #통합 연비 평균 산출
  arrange(desc(mean_tot))                 # 내림차순 
  head(5)
  
  
  mpg$class
  