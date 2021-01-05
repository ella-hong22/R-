
library("stringr")
library("readxl")
library(readr)
library(ggplot2)

df_sub1 <- read.csv(file ="E:/Ella/RStudio/Data/subway.csv" , fileEncoding = "UTF-8", header = TRUE)
df_sub2 <- read.csv("E:/Ella/RStudio/Data/subway.csv")

head(df_sub1)
library("dplyr")
str(df_sub1)

df_sub <- df_sub %>% 
  rename( h7= "X07.08", h8="X08.09" )
df_sub <- df_sub %>%  
  select( "역명","구분", "X07.08", "X08.09" )


df_sub$"07-08(시)"

 df_group %>% 
  goup_by("역명") %>% 
  summarise(total_sum = sum(total_h)) %>% 
  arrange(desc(total_h)) %>%  head(5)
  
 df_group
str(df_group)
df_group <-  df_group %>% rename(station = "역명")

df_group %>% 
  group_by(station) %>% 
  summarise(total = sum(total_h)) %>% 
  arrange(desc(total)) %>%  
  head(5)

df_group %>% 
  arrange(desc(total_h)) %>% 
  head(100)

df_group %>% 
  group_by("역명") %>% 
  summarise(sum(total_h))

df_group <- df_group %>% mutate(total_h= as.numeric(h7) + as.numeric(h8))
total_h= as.numeric(h7) + as.numeric(h8)
            sum_up = sum(구분))

sum(1+2)
sum(df_sub$"07-08(시)" + df_sub$"08-09(시)")
sum = df_sub$"07-08(시)" + df_sub$"08-09(시)"

df_sub <- gsub(",", "", df_sub)


table(df_sub$"08-09(시)")
df_sum <- df_sub %>%  
  select("07-08(시)", "08-09(시)" )
df_sub <-  as.numeric
head(df_sum)
rowsums(df_sum)

df_sub <- df_sub %>% mutate(timsum = df_sub$"07-08(시)" + df_sub$"08-09(시)")
head(welfare) 

apply(df_sum,1,sum)
class(df_sum)
