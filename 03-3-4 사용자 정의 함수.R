#제어문과 함수
#함수

# 사용자 정의 함수정의 - 매개 변수 (x) 반환값(x)
f1 <- function(){
  cat("매개변수가 없고 반환값 없는 함수")
  2  +3
} 
f1()
rNum <- f1()
rNum
#사용자 정의 함수정의 - 매개 변수 (x) 반환값(0)
f2 <- function(){
  cat("매개변수가 없고 반환값 있는 함수")
  return(2+3)
} 
f2()
rNum1 <- f2()
rNum1
#사용자 정의 함수정의 - 매개 변수 (0) 반환값(x)
f3 <- function(x,y){
  cat("매개변수가 있고 반환값 없는 함수")
  x+y
} 
f3(2,3)

#사용자 정의함ㅎ수 정의 - 매개 변수 (0) 반환값(0)
f4 <- function(x,y){
  cat("매개변수가 있고 반환값 있는 함수")
  return(x +y)
} 
f4(2,3)
rNum2 = f4(2,3)
rNum2

#구구단 출력 함수 정의
gugudan <- function(i,j){
  for (x in i) {
    cat ("**", x, "단 **\n")
    for(y in j) {
      cat(x, " * ", y, "=", x*y, "\n")
    }
    cat("\n")
  }
}
dan <- c(2:9)
su <- c(1:9)
gugudan(dan,su)
