# 엑셀 파일 읽기

# 패키지 설치 및 로딩
install.packages("readxl")
library(readxl)

# 도움말
help(read_excel)


# 처음 시트를 읽음
student <- read_excel("./student.xlsx")
student

# 시트 이름 지정
# sheet : 엑셀의 시트 이름
general <- read_excel("./student.xlsx", sheet="장군")
general