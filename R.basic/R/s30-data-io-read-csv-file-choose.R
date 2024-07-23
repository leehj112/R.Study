# 파일 읽기

# read.csv() 함수
help("read.csv")


# 파일 선택 다이얼로그 박스
# 사용자가 파일을 선택
sf <- file.choose()
sf # 선택한 파일 패스 및 파일이름

# student <- read.csv(file="./student.csv", header=F)
student <- read.csv(file=sf, header=F)
student


