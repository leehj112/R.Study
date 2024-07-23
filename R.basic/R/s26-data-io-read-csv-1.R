# 파일 입출력
# CSV: CSV(영어: comma-separated values)는 몇 가지 필드를 쉼표(,)로 
#      구분한 텍스트 데이터 및 텍스트 파일이다. 
#      확장자는 . csv이며 MIME 형식은 text/csv이다. 
#      comma-separated variables라고도 한다.

# read.csv()
help(read.csv)
# 칼럼: 공백, 콤마(,), 탭, 콜론(:), 세미콜론(;), 콤마 등으로 구분된 자료를 파일에서 읽음
# 옵션: header=T or F, sep=''

# 한 행이 하나의 컬럼으로 처리 됨
# 칼럼 구분자: 쉼표(,)로 처리
student <- read.csv(file="./student.csv", header=F)
student

# sep : 컬럼의 구분자 지정, 콤마(,)
student1 <- read.table(file="./student.csv", sep=',')
student1
