library(ggplot2)
library(dplyr)
library(rJava)
library(KoNLP)
library(stringr)

install.packages("httr")
library(httr)
install.packages("XML")
library(XML)

#1. 기본 URL
urlStr <- "https://openapi.naver.com/v1/search/news.xml?"

#2. 검색어 설정 및 UTF-8 인코딩
searchString <- "query=코로나"
searchString
#인코딩(에러나면 생략)
searchString <- iconv(searchString, to="UTF-8")
#URL 인코딩
searchString <-  URLencode(searchString)

searchString

etcString <-  "&display=50$start=1$sort=sim"

#4.URL 조립 
reqUrl <-  paste(urlStr, searchString, etcString, sep="")

reqUrl

#Client ID 설정
clientId <-  "sn***************Sm"

#Client Secret 설정
clientSecret <-  "R**************i"

#Get 함수 호출 
apiResult <-  GET(reqUrl, add_headers("X-Naver-Client-Id" =clientId,
                                       "X-Naver-Client-Secret" = clientSecret))
apiResult

#raw형 문자로 변화
result <-  rawToChar(apiResult$content)
result

#혹시 한글이 깨질때 
Encoding(result) <-  "UTF-8"

result2 <-  htmlParse(result, encoding = "UTF-8")

#XML에서 내용만 골라내기
text <-  xpathSApply(result2, "//item/description", xmlValue)
text

#각 행의 단어 추출 
noun <-  sapply(text, extractNoun, USE.NAMES =  F)
noun

noun2 <-  unlist(noun)
noun2

#불필요한 숫자 제거 
noun2 <-  gsub('//d+', '', noun2)
#불필요한 문자 제거 
noun2 <-  gsub('<b>', '', noun2)
noun2 <-  gsub('</b>', '', noun2)
noun2 <-  gsub('&amp', '', noun2)
noun2 <-  gsub('&lt', '', noun2)
noun2 <-  gsub('&gt', '', noun2)
noun2 <-  gsub('&quot', '', noun2)
noun2 <-  gsub('\'', '', noun2)
noun2 <-  gsub(' ', '', noun2)
noun2 <-  gsub('-', '', noun2)
noun2 <-  gsub(';', '', noun2)

#두 글자 이상 단어 필터링
noun2 <-  Filter(function(x) {nchar(x) >= 2} , noun2)

#추출된 명사 출력 - 확인 
noun2 

word_count <-  table(noun2)
word_count

#데이터 프레임으로 변환
df_word <-  as.data.frame(word_count, stringsAsFators =F)
head(df_word)

#변수명 수정 
df_word <-  rename(df_word,
                   word = noun2,
                   freq = Freq)

#두 글자 이상 단어만 추출
df_word <-  df_word %>% filter(nchar(word) >= 2)
df_word
#상위 20개 
top20 <-  df_word %>% 
  arrange(desc(freq)) %>% 
  head(20)

top20

