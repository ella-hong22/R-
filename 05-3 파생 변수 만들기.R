#파생 변수 만들기
df_var_derived <- data.frame(var1 = c(4,3,8),
                             var2 = c(2,6,1))
#합계 파생 변수 추가
df_var_derived$var_sum <-  df_var_derived$var1 +df_var_derived$var2 
df_var_derived

#평균 파생 변수 추가 
df_var_derived$var_mean <-  (df_var_derived$var1 + df_var_derived$var2) /2 
df_var_derived
