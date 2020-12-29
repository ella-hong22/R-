#숫자를 다루는 함수 이용하기

#변수 선언
x <- c(1,2,3)

#평균 
mean(x)

#최대값
max(x)

#최소값
min(x)

#문자를 다루는 함수 이용하기
#변수 선언
str4<- c("I", "am", "a","boy.")

#문자열 하나로 합치기(함수의 옵션 설정하기-파라미터 : 등호사용)
paste(str4, collapse =  ",")
paste(str4, collapse =  " ")

#함수 경과물로 새 변수 만들기
x_average <-mean(x)
x_average  
