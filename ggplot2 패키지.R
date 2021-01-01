# ggplot2() 패키지의 mpg 데이터를 사용할 수 있도록 불러온 후 복사본 만들기
mpg <- as.data.frame(ggplot2::mpg)
mpg

# 다양한 방법으로 데이터 확인하기
head(mpg)
tail(mpg)
View(mpg)
dim(mpg)
str(mpg)
summary(mpg)
?mpg

# cty는 city로, hwy는 highway로 수정하기
mpg <- rename(mpg, city = cty)
mpg <- rename(mpg, highway = hwy)

# 데이터 일부를 출력해 변수명이 바뀌었는지 확인하기
head(mpg)
str(mpg)

# 통합 연비 파생 변수 만들기
mpg$total <-  (mpg$cty + mpg$hwy) /2

# 히스토그램 그리기 : 값의 빈도를 막대 길이로 표현한 그래프
hist(mpg$total)
##
library(ggplot2)
qplot(mpg$total)
##

