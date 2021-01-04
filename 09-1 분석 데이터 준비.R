install.packages("foreign")

library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

getwe()
setwd("E:/Ella/RStudio/Data15")

raw_welfare <-  read.spss(file="koweps_hpc10_2015_beta5.sav",
                          to.data.frame =  T)

welfare <-  raw_welfare

head(welfare)
str(welfare)

welfare <-  rename(welfare, sex = h10_g3)

welfare <-  rename(welfare,
                   birth = h10_g4,
                   marriage =h10_g10,
                   religion = h10_g11,
                   income = p1002_8aq1,
                   code_job = h10_eco9, #직종코드
                   code_region = h10_reg7) #지역 코드

welfare <-  welfare %>% select(sex, birth, marriage, religion, income, 
                               code_job, code_region )
head(welfare)
str(welfare)
summary(welfare)
