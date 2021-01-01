
#파생변수 추가하기
exam %>% 
  mutate(total = math + english + science) %>%  #총합 변수 추가 
  head # 일부 추출 

exam %>% 
  mutate(total = math + english + science,
         mean = (math + english + science) /3) %>%  #총합 변수 추가 
  head # 일부 추출 

#mutate()에 ifelse() 적용하기
exam %>% 
  mutate(test = ifelse(science >=60, "pass", "fail")) %>% 
  head

#추가한 변수를 dplyr 코드에 바로 활용
exam %>% 
  mutate(total = math + english + science) %>%  #총합 변수 추가 
  arrange(total) %>% 
  head 
