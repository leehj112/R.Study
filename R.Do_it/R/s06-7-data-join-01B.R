# 06장 자유자재로 데이터 가공하기
# 06-7 데이터 합치기
# right_join() 가로로 합치기
# bind_rows() 세로로 합치기


# help(right_join)


library(dplyr)

exam <- read.csv("csv_exam.csv")
exam

# 담임교사
teachers <- data.frame(class = c(1, 2, 3, 4),
                       teacher = c("kim", "lee", "park", "choi"))
teachers


# exam에 담임교사 추가
# right_join()
# 담임 기준으로 조인: 담임 데이터만 선택
# class(5)는 누락
exam_teacher <- right_join(exam, teachers, by='class')
exam_teacher
