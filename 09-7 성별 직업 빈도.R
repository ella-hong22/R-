##성별 직업 빈도

#남성 직업 빈도 상위 10개 추출 
job_male <-  welfare %>% 
  filter(!is.na(job) & sex == "male") %>% 
  group_by(job) %>% 
  summarise(n = n()) %>% 
  arrange(desc(n)) %>% 
  head(10)
job_male

#여성 직업 빈도 상위 10개 
job_female <-  welfare %>% 
  filter(!is.na(job) & sex == "famale") %>% 
  group_by(job) %>% 
  summarise(n = n()) %>% 
  arrange(desc(n)) %>% 
  head(10)

job_female

welfare$sex

#남성 직업 빈도 상위 10 개 직업
ggplot(data = job_male, aes(x = reorder(job,n), y =n)) +
  geom_col() +
  coord_flip()

ggplot(data = job_female, aes(x = reorder(job,n), y =n)) +
  geom_col() +
  coord_flip()
