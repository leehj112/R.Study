# 06장 자유자재로 데이터 가공하기
# 06-4 순서대로 정렬하기
# arrange()
#   - 오름차순(Ascending): 기본값
#   - 내림차순(Descending): desc(column)

library(dplyr)

help(arrange)

exam <- read.csv("csv_exam.csv")
exam

# 오름차순 정렬(sort)
# 수학점수 낮은 데이터에서 높은 데이터 순
exam %>% arrange(math)

# 수학점수 높은 데이터에서 낮은 데이터 순
# 내림차순 정렬(sort) : desc(column)
exam %>% arrange(desc(math))

# 수학점수 상위 10명을 점수가 높은 순으로 추출
math_higher10 <- exam %>% arrange(desc(math)) %>% head(10)
math_higher10

# 수학점수 상위 10명을 점수가 높은 순으로 추출
# id, class, math 만 선택
exam %>% 
  arrange(desc(math)) %>% 
  head(10) %>% select(id, class, math)

# 수학점수 상위 10명을 추출
# id, class, math 만 선택
# 순서는 id 순으로 출력하라
exam %>% 
  arrange(desc(math)) %>% 
  head(10) %>% 
  select(id, class, math) %>%
  arrange(id)

# 성능
exam %>%
  select(id, class, math) %>%
  arrange(desc(math)) %>%
  head(10) %>%
  arrange(id)