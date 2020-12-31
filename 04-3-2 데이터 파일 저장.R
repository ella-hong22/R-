
#외부 데이터 이용하기 : 파일 저장 
#앞에서 생성한 데이터 프레임 확인 
df_txt_exam1
df_csv_exam1
df_excel

#데이터 프레임을 txt로 저장
write.table(df_txt_exam1, file = "E:/Ella/RStudio/Work/test.txt")

#csv 로 저장
write.csv(df_csv_exam1, file = "E:/Ella/RStudio/Work/test.csv")

#xls로 저장 : 다양한 패키지 제공 
install.packages("xlsx")
library(xlsx)
write.xlsx(df_excel, file = "E:/Ella/RStudio/Work/test.xls")

#RData 파일로 저장
save(df_csv_exam1, file = "test.rda")

#변수 삭제 
rm(df_csv_exam1)
df_csv_exam1 #없어짐 
#저장된 rda 데이터 불러오기 
load("test.rda")
df_csv_exam1
