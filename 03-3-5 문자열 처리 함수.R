#문자열 처리
#stringr 패키지

str01="홍길동35전우치25손오공30Hello15"

#문자열 길이 구하기
len <- str_length(str01)
len

#문자열 위치 구하기
loc <-  str_locate(str01, "전우치")
loc

#부분 문자열 구하기
str02 <-  str_sub(str01, 1, len -9)
str02
str03 <-  str_sub(str01,1,5)
str03

#대소문자 변경하기 
str04 <- str_to_upper(str01)
str04
str05 <- str_to_lower(str01)
str05

#문자열 교체
str06 <-  str_replace(str01, "전우치", "강감찬")
str06

#문자열 결합
str07 <-  str_c("***", str01, "***")
str07

#문자열 분리 
str08 = "홍길동, 전우치, 손오공, 해리포터" 
str09 <- str_split(str08,",")

#벡터 문자열로 합치기
str10 <-  paste(str09, collapse = ",")
str10

str11 = c( "홍길동", "전우치", "손오공", "해리포터" )
str11
str12 <- paste(str11, collapse = ",")
str12 