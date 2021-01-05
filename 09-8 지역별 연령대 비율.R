
#지역별 연력대 비율 - 노년층이 많은 지역은 어디일까?

#지역 변수 검토 및 전처리

#class()로 code_region(지역) 변수 타입 
class(welfare4$code_region)

table(welfare4$code_region)

#지역 코드 목록 만들기
list_region <-  data.frame(code_region = c(1:7),
                           region = c("서울",
                                      "수도권(인천/경기)",
                                      "부산/경남/울산",
                                      "대구/경북",
                                      "대전/충남",
                                      "강원/충북",
                                      "광주/전남/전북/제주도"))
list_region
welfare4$ageg

welfare4 <-  left_join(welfare4, list_region, id = "code_rigion")

welfare4 %>% 
  select(code_region, region) %>% 
  head
#지역별 연령대 비율 분석 
region_ageg <-  welfare4 %>% 
  group_by(region, ageg) %>% 
  summarise(n = n()) %>% 
  mutate(tot_group= sum(n)) %>% 
  mutate(pct = round(n/tot_group*100, 2))

head(region_ageg ,10)

#지역별 연령대 비율표 만들기 (2)

region_ageg2 <-  welfare4 %>% 
  count(region,ageg) %>% 
  group_by(region) %>% 
  mutate(pct = round(n/sum(n)*100, 2))

head(region_ageg2 ,10)

#그래프 만들기 - 막대가 가나다 순
ggplot(data = region_ageg,
       aes(x = region, y = pct, fill = ageg))+
  geom_col()+
  coord_flip()


#노년층 비율 높은 순으로 막대 정렬 -내림
list_order_old <-  region_ageg %>% 
  filter(ageg == "old") %>% 
  arrange(pct)

list_order_old

#지역명 순서 변수 만들기
order <-  list_order_old$region
order

#막대가 노년층 비율이 높은 순으로 정렬하려 출력
ggplot(data = region_ageg,
       aes( x= region, y = pct, fill = ageg)) +
  geom_col() + 
  coord_flip() +
  scale_x_discrete(limits = order)

#연령대 순으로 막대 색깔 나열 
#-fill 파라미터에 지정할 변수의 범주(levels) 순서를 지정

class(region_ageg$ageg)
levels(region_ageg$ageg)
region_ageg$ageg

#level 파라미터를 순서를 지정 
region_ageg$ageg <-  factor(region_ageg$ageg,
                            level = c("20대", "30대", "40대","50대","60대","old"))

class(region_ageg$ageg)
#지정된 레벨이 반영되었는지 확인
levels(region_ageg$ageg)

ggplot(data= region_ageg,
       aes(x = region, y = pct, fill = ageg)) +
  geom_col() +
  coord_flip() + 
  scale_x_discrete(limits = order)
