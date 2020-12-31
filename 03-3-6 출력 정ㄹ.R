#출력 정리

#sprintf()
##특정한 규칙에 맞게 문자열로 변환출력
## %d : 인자를 정수로 출력
## %f : 인자를 실수로 출력
## %s : 인자를 문자열로 출력

sprintf("%d", 123)
 sprintf("Number: %d", 123)
sprintf("Number: %d, String : %s", 123 ,"hello")
sprintf("%.2f", 123.456) 


#%5d : 5자리 고정. 앞에 공백 추가.
sprintf("%5d", 123)
sprintf("%5d", 1234)
sprintf("%5d", 12345)
sprintf("%5d", 123456)

##cat()

#행을 바꾸지 않는 특징 
for( i in 1:3 )print(i)
for( i in 1:3 )cat(i)
cat(1,2,3,4)
cat(1,2,3,4,"\n")
