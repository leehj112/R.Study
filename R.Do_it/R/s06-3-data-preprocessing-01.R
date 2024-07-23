# 06장 자유자재로 데이터 가공하기
# 06-3 필요한 변수만 추출하기 : 칼럼
# select() 함수

library(dplyr)

exam <- read.csv("csv_exam.csv")
exam

# 변수 추출
m1 <- exam %>% select(math) # 수학점수 추출
m2 <- exam$math
m2
class(m1) # "data.frame"
class(m2) # "integer", vector

# 여러 변수를 추출
m3a <- exam %>% select(class, math, english)
m3b <- select(exam, class, math, english)
m3a
m3b

# 새로운 데이터프레임 생성
m4 <- data.frame(class=exam$class, math=exam$math, english=exam$english)
class(m4) # "data.frame"
m4

# 변수 제외 : 칼럼 앞에 minus(-) 부호 붙임
# -math : math 칼럼을 제외하고 나머지 모든 칼럼을 추출
exam %>% select(-math)         # 수학을 제외하고 나머지 컬럼을 선택
exam %>% select(-class, -math) # 학급, 수학을 제외하고 나머지 컬럼을 선택

# filter()와 select() 조합
# class가 1인 학생의 영어 점수
exam %>% filter(class == 1) %>% select(english)

exam %>% 
  filter(class == 1) %>% 
  select(english)

exam %>% 
  select(english) %>%
  head # 6개의 행만 추출

exam %>% 
  select(english) %>%
  head(3) # 3개의 행만 추출