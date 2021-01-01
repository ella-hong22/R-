[ 문제 06-6-1 ]
mpg 데이터의 class 는 “suv”, “compact” 등 자동차를 특징에 따라 일곱 종류로 분류한 변수이다.
어떤 차종의 도시 연비가 높은지 비교해 보려고 한다.
class 별 cty 평균을 구하라.
mpg
mpg %>% 
  group_by(class) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty))

[ 문제 06-6-2 ]
앞 문제의 출력 결과는 class 값 알파벳 순으로 정렬되어 있다.
어떤 차종의 도시 연비가 높은지 쉽게 알아볼 수 있도록 cty 편균이 높은 순으로 정렬해 출력하라.

[ 문제 06-6-3 ]
어떤 회사 자동차의 hwy(고속도로 연비)가 가장 높은지 알아보려고 한다.
hwy 평균이 가장 높은 회사 세 곳을 출력하라.

mpg %>% 
  filter(class == "compact")

[ 문제 06-6-4 ]
어떤 회사에서 “compact”( 경차) 차종을 가장 많이 생산했는지 알아보려고 한다.
각 회사별 “compact” 차종 수를 내림차순으로 정렬해 출력하라.

mpg %>% 
  filter(class == "compact") %>% 
  group_by(manufacturer) %>% 
  summarise(count = n()) %>% 
  arrange(desc(count))
  
  