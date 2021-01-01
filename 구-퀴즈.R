library(ggplot2)

midwest
str(midwest)

midwest$pop

midwest1 <-  midwest %>% mutate(child_ratio =(poptotal-popasian)/poptotal*100)
midwest1                                

[ 문제 2 ]
midwest1 %>% 
  arrange(desc(tolault)) %>% 
  select(county, child_ratio) %>% 
  head(5)

[ 문제 3 ]
midwest1 <- midwest1 %>% 
  mutate(grade = ifelse(child_ratio >= 60, "A",
                  ifelse(child_ratio >= 50, "B",
         ifelse(child_ratio >= 40, "c",  "D"  )))


         table(midwest2$grade)
         midwest1
         
         [문제 4] 
         mid_audly <- midwest1 %>% mutate(child_asian =(popasian/poptotal)*100 )
         mid_audly %>%  select(child_asian, state, county) %>% 
           arrange(child_asian) %>% 
           head(10)
         %>% 
           select(tolasian, state, county) %>% 
           head(10)
  ) 
mid_audlt$state

mid_audlt
