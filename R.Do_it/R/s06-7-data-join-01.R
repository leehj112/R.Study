# 06장 자유자재로 데이터 가공하기
# 06-7 데이터 합치기
# left_join() 가로로 합치기
# bind_rows() 세로로 합치기


# 중간고사 데이터 생성
test1 <- data.frame(id = c(1, 2, 3, 4, 5),           
                    midterm = c(60, 80, 70, 90, 85))
test1

# 기말고사 데이터 생성
test2 <- data.frame(id = c(1, 2, 3, 4, 5),           
                    final = c(70, 83, 65, 95, 80))
test2

# left_join()
# id를 기준으로 합치기
total <- left_join(test1, test2, by="id")
total

# 담임교사
name <- data.frame(id = c(1, 2, 3, 4, 5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))
name

# 학생과 담임교사 합치기
student <- left_join(total, name, by='id')
student

#
# 담임교사
# id에서 5가 누락
name2 <- data.frame(id = c(1, 2, 3, 4),
                    teacher = c("kim", "lee", "park", "choi"))
name2

# 학생과 담임교사 합치기
# id(4)인 학생의 담임은 없으므로 : <NA>
student2 <- left_join(total, name2, by='id')
student2

# 담임교사 기준으로 합치기
# 5번학생은 조인되지 않음
teacher <- left_join(name2, total, by='id')
teacher

# 칼럼이 다른 경우
# 담임교사
namec <- data.frame(class = c(1, 2, 3, 4, 5),
                    teacher = c("kim", "lee", "park", "choi", "jung"))
namec

# Error 발생
# total에는 class 변수가 없다.
studentx <- left_join(namec, total, by='class')
studentx

# 학생과 담임교사 합치기
# 담임교사의 칼럼이 class인 경우 
# 칼럼(id)를 추가해서 조인
mutate(namec, id=class)
studentc <- left_join(total,
                      mutate(namec, id=class), 
                      by='id')
studentc