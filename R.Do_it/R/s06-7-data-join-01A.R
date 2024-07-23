# 06장 자유자재로 데이터 가공하기
# 06-7 데이터 합치기
# left_join() 가로로 합치기
# bind_rows() 세로로 합치기


library(dplyr)

exam <- read.csv("csv_exam.csv")
exam

# 담임교사
teachers <- data.frame(class = c(1, 2, 3, 4, 5),
                       teacher = c("kim", "lee", "park", "choi", "jung"))
teachers


# exam에 담임교사 추가
exam_teacher <- left_join(exam, teachers, by='class')
exam_teacher

help(right_join)