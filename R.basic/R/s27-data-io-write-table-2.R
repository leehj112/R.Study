# 파일 입출력

# write.table()
# 데이터프레임을 파일로 저장

# 파일 읽기
student <- read.table(file="./student-header.txt", header=T)
student

new_student <- data.frame(번호=c("4000", "5000"),
                          이름=c("사오정", "오징어"),
                          신장=c(140, 70),
                          몸무게=c(44, 7))
new_student

# 행 추가 : rbind() 함수
df_student <- rbind(student, new_student)
df_student

# 파일 저장
# 기존의 파일이 있으면 덮어 쓴다.
# row.names : 행 이름 지정 유무, TRUE, FALSE
# col.names : 열 이름 지정 유무, TRUE, FALSE
write.table(df_student, "./student-header-wt.txt", row.names=F, col.names=T)