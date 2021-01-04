## 성별에 따른 월급 차이 - 성별에 따라 월급이 다를까?

#변수의 값 파악 --> 눈으로 훑어보기
welfare$sex
#class()로 성별 변수의 타입을 파악 --> numeric 확인
class(welfare$sex)

#범주별 몇 명이 있는지 파악 - 이상치 확인 
table(welfare$sex)

#이상치를 결측 처리 함다.(현재 데이터는 없음으로 처리할게 없음)
welfare$sex <-  ifelse(selfare$sex == 9, NA, welfare$sex)

#결측치 확인 
table(is.na(welfare$sex)) #NA가 아닌 데이터 가 총 몇개다.

welfare$sex <-  ifelse(welfare$sex ==1 , "male","famale")
head(welfare)
table(welfare$sex)
qplot(welfare$sex)

#수입변수 데이터 검토
class(welfare$income)


sum(table(welfare$income))
summary(welfare$income)
boxplot(welfare$income)

#현재 결측치가 12030개 있다. 

qplot(welfare$income) + xlim(0,1000)

#코드북에는 월급이 1~9998사이의값ㄱ을 지닌다고 되어 있ㄴㄴ데
#summary() 출력 결과에 최솟값이 0으로 나타나 있다. 
# 0 or 9999 : 범위 초괴 <--- 이상치 

welfare$income <- ifelse(welfare$income%in% c(0,9999), NA, welfare$income)

table(is.na(welfare$income))

#결측치 : 12044 확인됨

#성별 월급 평균표 구하기
sex_income <-  welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(sex) %>% 
  summarise(mean_income = mean(income))
sex_income

ggplot(data =  sex_income, aes( x= sex, y = mean_income)) + geom_col()

#결과적으로 남자들의 인금이 여자들의 약 2배가 되는것ㄱ으로 
#확인된다. 하지만 이는 나이별 인금차이를 고려하지 않았기 때문에
#나온 결과이다. 