#Arrange

#순서대로 정렬
#math 오름 차순 정렬
exam %>%  arrange(math)

#math 내림차순 정렬
exam %>%  arrange(desc(math))

exam %>%  arrange( class, math)
