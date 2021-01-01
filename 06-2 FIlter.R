## 조건에 맞는 데이터만 추출 : ROW ##
install.packages("dplyr")
library(dplyr)


setwd("E:/Ella/RStudio/Data")
setwd

exam <-  read.csv("csv_exam1.csv")
exam

#파이프 연산자(%>%) 입력 단축키 : ctrl+shift +m

#class 가 1인 경우 추출
exam %>%  filter(class == 1)

#1반이 아닌 경우
exam %>%  filter(class != 1)

##초과, 미만, 이상, 이하 조건 달기 

#수학 점수가 50점을 초과한경우 
exam %>%  filter(math >50 )

# and 여러 조건을 충족하는 행 추출하기 

#1반이면서 수학 점수가 50 이상 
exam %>%  filter(class ==1 & math >=50)

#수학 점수가 90점 이상이거나 영어점ㅈ수가 90점 이상인 경우
exam %>%  filter(math>=90 | english >= 90)


#목록에 해당하는 행추출
#1,3,5 반에 해당되면 추출
exam %>%  filter(class ==1 | class ==3 | class ==5)

#%in% 기호는 변수의 값이 지정한 조건 목록엣 해당하는지 확인하느 기능
exam %>% filter(class %in% c( 1,3,5))

#추출한 행으로 데이터 만들기 ##
class 1 <- exam %>%  filter(class ==1) #class 가 1인 행 추출, class에 할당 
mean(class1$math) # 1반 수학 점수 평균 구하기 