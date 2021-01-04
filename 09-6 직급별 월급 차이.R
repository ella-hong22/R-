## 직업별 월급차이 - 어떤 직업이 월급을 가장 많이 받을까?

##for MAC - 그래프에서 하글이 깨집 
library(extrafont)
fomt_imort()
theme_set(theme_grey(base_family = 'NanumGothic'))


#직업 변수 검토 및 전처리 
class()로 sex(성별) 변수의 타입을 파악
#--> numeric 확인
class(welfare$code_job)
table(welfare$code_job)

library(readxl)

list_job <- read_excel("Koweps_Codebook.xlsx", col_names = T, sheet = 2)
head(list_job)
dim(list_job)
#출력 결과를 보면 직업 분류 코드 목록이 코드와 직업명 두 변수로 구성,
#직업은 149개로 분류

#데이터 프레임 합치기
welfare <-  left_join(welfare, list_job , id = "code_job")

welfare %>% 
  filter(!is.na(code_job)) %>% 
  select(code_job, job) %>% 
  head(10)


#직업별 월급 차이 분석 
#평균표 만들기
job_income <-  welfare %>% 
filter(!is.na(job) & !is.na(income)) %>% 
  group_by(job) %>% 
  summarise(mean_income = mean(income))

job_income

#내림 차순 & 상위 10 개 추출
top10 <-  job_income %>% 
  arrange(desc(mean_income)) %>% 
  head(10)
  
top10

#그래프 만들기
#x 축의 내용이 길어 90도 회전
ggplot(data= top10,
       aes(x = reorder(job, mean_income), y = mean_income))+
  geom_col() + 
  coord_flip() 

#하위 10위 추출 
bottom10 <-  job_income %>% 
  arrange(mean_income) %>% 
  head(10)

bottom10

#그래프 만들기
ggplot(data= bottom10,
       aes(x = reorder(job, -mean_income), y = mean_income)) +
  geom_col() +
  coord_flip()+
  ylim(0,850)
