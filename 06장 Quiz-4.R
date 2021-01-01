mpg


#[ 문제 06-3-1 ]
mpg_a <- mpg %>%  select(class, cty)

#[ 문제 06-3-2 ]

mpg_suv <-  mpg_a %>% filter(class == "suv")
mpg_com <-  mpg_a %>% filter(class == "compact")

mean(mpg_suv$cty) #도시 연비 13.5
mean(mpg_com$cty) # 도시 연비 20.12766 

