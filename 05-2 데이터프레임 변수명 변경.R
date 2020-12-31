#변수명 바꾸기

#패키지 설치 및 로드
install.packages("dbplyr")
library(dbplyr)

#데이터 프레임 생성
df_var_change1 <-  data.frame(var11 = c(1,2,1),
                              var12 = c(2,3,2))

df_var_change1
df_var_change2 <-  df_var_change1
df_var_change2

#칼럼명 변경 (1)
names(df_var_change2) <-  c("var21", "var22")
df_var_change2

#칼럼명 변경 (2)
df_var_change2 <-  rename(df_var_change2, v32 = var22)
df_var_change2


# 조건문을 이용해 파생 변수 만들기
mpg$test <-  ifelse(mpg&total >= 20, "pass", "fail")
head(mpg)

#빈도표로 합격 판정 자동차 수 살펴보기
# 연비 합격 빈도표 생성
table(mpg$test)

# 막대 그래프로 빈도 표현하기
hist(mpg$test)

# 중첩 조건문 활용하기
mpg$grade <- ifelse(mpg$total >= 30, "A",
                    ifelse(mpg$total >= 20, "B", "C")
)
head(mpg)
table(mpg$grade)

# 등급 빈도 막대 그래프 생성
qplot(mpg$grade)

