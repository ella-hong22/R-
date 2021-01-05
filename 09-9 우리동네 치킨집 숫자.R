install.packages("stringr")
library("stringr")
library("readxl")



getwd = ("E:/Ella/RStudio/Data")
df_Chicken <- as.data.frame(read_excel("E:/Ella/RStudio/Data/치킨집가공.xlsx"))
head(df_Chicken)
str(df_Chicken)
glimpse(df_Chicken)
class(df_Chicken)

library(dplyr)
#11번째 글자부터 16번째 글자 앞까지 추출
addr1 <- substring(df_Chicken$"소재지전체주소", 11, 16)

df_Chicken$소재지전체주소

head(addr1)
addr2 <-  str_sub(df_Chicken$소재지전체주소, 11, 16)
head(addr2)
loc <-  str_locate(str01, "전우치")

#실제 사용할 데이터
addr3 <-  str_sub(df_Chicken$소재지전체주소, 11)
addr3 <-  str_sub(addr3, 1, str_locate(addr3, " "))
addr3

#필요없는 문자 제거 - 연습
addr_num <-  gsub("[0-9]", "", addr1)
addr_trim <-  gsub(" ","", addr_num)
addr_trim
addr_trim <- gsub("-", "", addr_trim)
addr_trim

#필요없는 문자 제거 - 실제 사용
addr_trim3 <-  str_replace(addr3, " ", "")

addr_trim3
#빈도표 작성 
addr_count <-  table(addr_trim3) %>% 
  data.frame() %>% 
  arrange(desc(Freq))
head(addr_count,10)

#트리맵으로 표현 
#treemap(데이터 세트, index = 구분 열, VSize = 분포 열, cColor = 색상, title = 제목)


install.packages("treemap")
library(treemap)

treemap(addr_count, index = "addr_trim3", VSize = "Freq",  title = "치킨집 분포")