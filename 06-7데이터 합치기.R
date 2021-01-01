##가로로 데이터 합치기 ##

#중간고사 데이터 생성
test1 <- data.frame(id = c(1,2,3,4,5),
                    midterm = c(60,80,70,90,85))

#기말고사 데이터 생성
test2 <- data.frame(id = c(1,2,3,4,5),
                    midterm = c( 70,83,65,95,85))

#출력
test1
test2

#dplyr : id 기준으로 합쳐서 total에 할당
total <-  left_join(test1, test2, by = "id")
total


##---------------------------------------------##
exam <-  read.csv("csv_exam1.csv")
exam

#기존 데이ㅓ  ㅡ레임에 선생님 데이터 추가 
name <-  data.frame(class= c(1,2,3,4,5),
                    teacher = c("kim", "lee","park", "choi","jung"))
name

exam_new <-  left_join(exam, name, by = "class")
exam_new


# 세로로 데이터 합치기 

# 학생 1~5번 시험 데이터 생성
gruop_a <-  data.frame(id = c(1,2,3,4,5) ,
                       test = c(60,80,70,90,85) )
gruop_b <-  data.frame(id = c(6,7,8,9,10) ,
                       test = c(70, 83, 65,90,85) )
gruop_a
gruop_b


#세로로 합칠땐 두 데이터의 변수명이같아야한다.
#만약 다르면 rename()을 이용해 동일하게 맞춘 후 합친다. 
gruop_all <-  bind_rows(gruop_a, gruop_b)
gruop_all

