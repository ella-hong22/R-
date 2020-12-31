#데이터 로딩 
exam <- read.csv("E:/Ella/RStudio/Data/csv_exam1.csv")

#데이터를 파악할 때 사용하는 함수들 
head(exam)

#앞에서 10행
head(exam, 10)

#뒤에서
tail(exam)

#데이터 뷰어 창에서 데이터확인 (V 대문자. 함수명)
View(exam)

#데이터 행 열 구성 보기
dim(exam)

#데이터 속성 
str(exam)

#요약 통계량 산출
summary(exam)

#박스 상자
boxplot(exam$math)
