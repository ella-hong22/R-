#연령대에 따른 월급 차이

## 연령별 파생변수 만들기
welfare4 <- welfare %>% 
  mutate(ageg = ifelse(age < 30, "20대",
                       ifelse(age < 40, "30대",
                              ifelse(age < 50, "40대",
                                     ifelse(age < 60, "50대",
                                            ifelse(age < 70, "60대", "old")
                                            )
                              )
                       )
               )
  )
  # 범주 데이터 출력/ 확인
table(welfare4$ageg)

#그래프로 확인
qplot(welfare4$ageg)

qplot(welfare$income
      )

#연령 그룹별 소득 평균 구하기
ageg_income <- welfare4 %>% 
  filter(!is.na(income)) %>% 
  group_by(ageg) %>% 
  summarise(mean_income = mean(income))

ageg_income
#그래프
ggplot(data = ageg_income, aes(x = ageg, y = mean_income)) + geom_col()
#막대가 연령대별로 정렬되도록 설정

ggplot(data = ageg_income, aes(x = ageg, y = mean_income)) +
  geom_col() + 
  scale_x_discrete(limits = c( "20대","30대","40대","50대","60대","old"))


