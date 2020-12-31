#제어문과 함수

#조건문 

x <- 50; y<-4 ; z<-x*y
# if() 함수
if (x*y > 40) {
  cat("x*y의 결과는 40 이상입니다. \n")
  cat("x*y= ", z)
}

score <- scan()
#console 에서 입력하고 엔터, 입력 끝내기 위해 한번 더 엔터
#다음을 범위 지정해서 한번에 실행

result <- "노력"
if (score >= 80) {
  result <- "우수"
}
cat("당시의 학점은", result, score)


score <- scan()

if(score >=90) {
  result = "A 학점"
}else if(score >=80) {
  result = "B 학점"
}else if(score >=70) {
  result = "C 학점"
}else if(score >=60) {
  result = "D 학점"
}else {
  result = "F 학점"
}


install.packages("stringr")
library(stringr)

str = str_c(result " : ", score)
cat("당신의 학점은 ", str)

#2-2 ifelse() 함수 3항 연산자와 유사
score <- scan()
ifelse(score >=80, "우수", "노력")
ifelse(x >=20 $ y<0, x^2, sqrt(y))

# switch() 함수
empname <- scan(what= "")
#문자는 따옴표롤 묶어서 입력
#case 값 = 해야할일
switch (empname,
  "홍길동" = cat(100),
  "전우치" = cat(200),
  "손오공" = cat(300),
  cat("같은 값이 없습니다.")
)

#which() 함수
#백터 객체를 대상으로 특정 데이터를 검색하는데 사용되는 함수
name <- c("홍길동", "전우치", "손오공", "해리포터" ,"멀린")
#데이터가 없으며 0이 출력, 있다면 해당 인덱스가 출력
which(name =="전우치")
