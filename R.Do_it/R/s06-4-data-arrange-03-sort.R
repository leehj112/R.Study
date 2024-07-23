# 06장 자유자재로 데이터 가공하기
# 06-4 순서대로 정렬하기
# arrange()
#   - 오름차순(Ascending): 기본값
#   - 내림차순(Descending): desc(column)

library(dplyr)

help(arrange)

exam <- read.csv("csv_exam.csv")
exam

# 벡터 정렬 : 오름차순
# 데이터를 정렬
math_sort_asc <- sort(exam$math)
math_sort_asc # 수학점수

######################################
# 내림차순

# 벡터 정렬 : 내림차순
# 데이터를 정렬
math_sort_desc <- sort(exam$math, decreasing=T)
math_sort_desc # 수학점수
