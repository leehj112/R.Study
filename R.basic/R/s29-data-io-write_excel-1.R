# 엑셀 파일 쓰기

# 패키지 설치 및 로딩
install.packages("readxl")
library(readxl)

install.packages("writexl")
library(writexl)

# 도움말
help(read_excel)
help(write_xlsx)

# 처음 시트를 읽음
student <- read_excel("./student.xlsx")
student

# 엑셀로 쓰기
write_xlsx(student, path="./student-wt.xlsx")

# 엑셀로 쓰기
# 컬럼을 생략하고 데이터만 저장
write_xlsx(student, path="./student-wt-nocolnames.xlsx", col_names=F)
