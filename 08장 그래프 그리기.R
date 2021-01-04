#산점도 만들기

library(ggplot2)
mpg <- as.data.frame(ggplot2 ::mpg)

ggplot(data = mpg, aes(x = displ, y = hwy))  +
  geom_point() +  #산점도 추가
  xlim(3,6)+ #x축 범위 
  ylim(10,30)

#막대 그래프
library(dplyr)
mpg
#집단별 평균표 만들기
df_mpg <- mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy))
df_mpg

#그래프 생성
ggplot(data = df_mpg, aes(x = drv, y= mean_hwy)) +geom_col()

#크기 순으로 정렬
# - reorder()를 사용하면 값의 크기 순으로 정렬할 수 있다. 
ggplot(data = df_mpg, aes(x = reorder(drv, mean_hwy), y= mean_hwy)) +geom_col()
ggplot(data = df_mpg, aes(x = reorder(drv,-  mean_hwy), y= mean_hwy)) +geom_col()

#빈도 막대 그래프 만들기
#y축 없이 x 축만 지정하고 geom_col 대신 bar를 사용
ggplot(data = mpg, aes(x = drv)) +geom_bar()
ggplot(data = mpg, aes(x = hwy)) +geom_bar()


##선그래프 - 시간에 따라 달라지는 데이터 표현하기

mpg
economics

#x축 : 시간 
#y축 : 실업자
ggplot(data= economics, aes(date, y = unemploy)) + geom_line()


## 상자 그림 - 집단 간 분포 차이 표현
mpg

ggplot(data= mpg, aes(x = drv, y = hwy)) + geom_boxplot()

#앞의 이상치에서 사용한 방법
boxplot(mpg$hwy)
?boxplot
