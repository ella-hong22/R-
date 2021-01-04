#연령대 변수 검토 및 전처리
sex_income <- welfare4 %>% 
  filter(!is.na(income)) %>% 
  group_by(ageg, sex) %>% 
  summarise(mean_income = mean(income))
sex_income

#그래프 만들기
#막대 그래프 만들기

ggplot(data= sex_income,
       aes(x = ageg, y = mean_income, fill = sex))+
  geom_col() +
  scale_x_discrete(limits = c("20대", "30대", "40대","50대","60대","old"))

#하나의 축에 두개의 데이터를 나란히 표시 (position)
ggplot(data= sex_income,
       aes(x = ageg, y = mean_income, fill = sex))+
  geom_col(position =  "dodge") +
  scale_x_discrete(limits = c("20대", "30대", "40대","50대","60대","old"))
#이번에는 연령대로 구분하지 않고 나이 및 성별 월급 평균표 만들어 그래프로 표현

#연령별 성별 월급 평균표 만들기
sex_age <-  welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(age, sex) %>% 
  summarise(mean_income = mean(income))
head(sex_age)

#선그래스 이용 (aes()의 col에 sex를 지정 )
ggplot(data = sex_age, aes(x = age, y = mean_income, col = sex)) + geom_line()
