#제어문과 함수

#반복문
#for() 함수
i <- c(1:10)
for(n in i) {
  cat(n, "*10 = ", n*10, "\n")
}

for(n in i) {
  print(n *10)
  print(n)
}

for(n in i) {
  if(n%%2 ==0) {
    next
  }else{
    print(n)
  }
}


#변수의 칼럼명 출력
exam <- data.frame(english2 = c(90,80,60,70),
                   math2 = c(50,60,100,20),
                   class2 = c(1,1,2,2),
                   name3= c("홍길동", "전우치", "손오공","해리포터")
                   )
exam
name <- c(names(exam)) # 열불러오기 
for (n in name) {
  print(n)
}
names
#벡터 데이터 사용
name2 = c("홍길동", "전우치", "손오공","해리포터")
for(s in name2) {
  print(s)
}

#while() 함수
i = 0
while(i <10) {
  print(i)
  i <- i+1
}