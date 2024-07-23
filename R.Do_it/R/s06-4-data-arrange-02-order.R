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
dfmathasc <- exam %>% arrange(math)

# 벡터 정렬 : 오름차순
# 순서 추출
math_order_asc <- order(exam$math)
math_order_asc # 인덱스
exam[math_order_asc,]

######################################
# 내림차순
exam %>% arrange(desc(math))

# 벡터 정렬 : 내림차순
math_order_desc <- order(-exam$math)
math_order_desc # 인덱스
exam[math_order_desc,]
