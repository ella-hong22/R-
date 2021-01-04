##이상치 정제하기##

# 이상치가 포함된 데이터를 생성 
outlier <- data.frame(sex = c(1,2,1,3,2,1),
                      score = c(5,4,3,4,2,6))
outlier


#이상치 확인하기
table(outlier$sex)
table(outlier$score)

#이상치 값을 결측 처리하기 : sex 가 3 이면 NA 할당
outlier$sex <- ifelse(outlier$sex == 3, NA, outlier$sex)
outlier

#이상치 값을 결측 처리하기 : score가 5보다 크면 NA 할당
oulier$score <- ifelse(outlier$score >5 , NA, outlier$score)
outlier

library(dplyr)
#결측치 제거하여 최종적으로 이상치 정제
outlier %>% 
  filter(!is.na(sex) & !is.na(score)) %>% 
  group_by(sex) %>% 
  summarise(mean_score = mean(score))

###-------------
mpg <- as.data.frame(ggplot2::mpg)
boxplot(mpg$hwy)

#상자 그림 통계치 출력
boxplot(mpg$hwy)$stats

#12~37벗어나면 ㅜㅁ gkfekd
mpg&hwy <- ifelse(mpg$hwy <12 | mpg$hwy > 37, NA, mpg$hwy)

#결측치 확인
table(is.na(mpg$hwy))

mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy, na.rm=T))
