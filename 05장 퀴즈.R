library(ggplot2)
midwest <- as.data.frame(ggplot2::midwest)
midwest

install.packages("reshape")
library(reshape)

install.packages("plyr")
library(plyr)

str(midwest)
#문제 인구 변수를 total, 아시아 인구를 asian 으로 수정

midwest <- rename(midwest, c("total" = "poptotal"))
midwest$poptotal
midwest <- rename(midwest,  asian = popasian)

mpg$test <-  ifelse(mpg&total >= 20, "pass", "fail")
head(mpg)

midwest$ratio<- (midwest$popasian / midwest$poptotal)*100
midwest$popasian

mpg$test <-  ifelse(mpg&total >= 20, "pass", "fail")
head(mpg)

midwest$ratio