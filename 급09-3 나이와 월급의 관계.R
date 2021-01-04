#나이와 월급의 관계 - "몇 살 때 월급을 가장 많이 받을까?"

#변수의 타입을 파악 
class(welfare$birth)
summary(welfare$birth)

qplot(welfare$birth)

summary(welfare$birth)

#결측 처리
welfare$birth <- ifelse(welfare$birth = 9999, NA, welfare$birth)

table(is.na(welfare$birth))

#파생변수 만들기
welfare$age <-  2015 - welfare$birth +1 
head(welfare)

qplot(welfare$birth)
#또다른 방법  
welfare <- welfare %>% mutate(age2 = 2015 - welfare$birth +1 )
head(welfare)

#나이와 월급의 관계 분석 
age_imcome <-  welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(age) %>% 
  summarise(mean_income = mean(income))

head(age_imcome)

#선그래프로 표현 
ggplot(data = age_imcome, aes(x = age, y = mean_income)) + geom_line()
ggplot(data = age_imcome, aes(x = age, y = mean_income)) + geom_col()

#출력된 그래프에서 20대 초반에 100만원 가량의 월급을 받고,
이후 지속적으로 증가,
50대 무렵 300만원 초반대로 가장 많은 월급을 받고, 이후 지속적으로감소