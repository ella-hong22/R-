#제어문과 함수

#1: 연산자

num1 <-5
num2 <- 3

#산술 연산자 
result1 <- num1 +num2
result2 <-num1 - num2
result3 <-num1 *num2
result4 <-num1 /num2
result5 <-num1 %/%num2 #몫
result6 <-num1 %% num2 #나머지
result7 <-num1 ^ 2 #제곱
result8 <-num1 ^ num2

# 관계 연산자
boolean1 <- num1 == num2
boolean2 <- num1 != num2
boolean3 <- num1 > num2
boolean4 <- num1 >= num2
boolean5 <- num1 < num2
boolean6 <- num1 <= num2

#논리 연산자
logical1 <-num1 >= 50 & num2 <=10
logical2 <-num1 >= 50 | num2 <=10
logical3 <-num1 ! (num2 >=50)

#배타적 논리합은 두 논리적인 값이 상반되는 경우 True 같으면 False이다. 
X <- TRUE
Y<- FALSE
xor(X,Y)
