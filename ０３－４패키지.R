#패키지 설치
install.packages("ggplot2")
#패키지 로드
library(ggplot2)

#변수 생성
x2 <- c("a","a","a","b","b","c")

x2

#빈도 막대 그래프 출력
qplot(x2)

#함수의 기능 : 매뉴얼출력
?qplot
