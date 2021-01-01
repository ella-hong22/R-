
install.packages("reshape2")
library(reshape2)

#데이터 프레임 한 번에 만들기 
df_score <-  data.frame(english =c(90,80,60,70),
                       Math =c(50,60,100,20),
                       Class = c(1,1,2,2),
                       name = c("홍길동", "전우치" ," 손오공","해리포터"))
df_score
#변수명에대ㄷ문자가 섞여있ㅇ으면 발생할 수 있는 실수를막ㅁ기위ㅇ해 
#변수명을 구하는 names() 함수와
#소문자로 치환하는 tolower() 함수이ㅇ용해 변수명을 소문자로 변경

names(df_score) <-  tolower(names(df_score))
df_score

#melt()함수 : 가로로 긴 형태의 데이터를 세로로 길게 전환
#- melt(데이터 세트, id.var = "기준 열", measure.vars = "변환 열" )
#결측치 포함 - na.rm =True

df_score2 <-  melt(df_score, id.var = "name" ,measure.vars = "math", na.rm = TRUE)
df_score2


df_score3<-  melt(df_score, id.var = "name" ,measure.vars = c("english","math"))
df_score3

df_score4<-  melt(df_score, id.var = c("name","class") ,measure.vars = c("english","math"))
df_score4

#긴 형식으로 넓은형ㅎ식으로 

wide1 <-  dcast(df_score3, name ~ variable)
head(wide1)

wide2 <-  dcast(df_score4, name + class~ variable)
head(wide2)
