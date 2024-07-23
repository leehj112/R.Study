# 06장 자유자재로 데이터 가공하기
# 06-1 데이터 전처리 - 원하는 형태로 데이터 가공하기

# 데이터 전처리와 비슷한 의미
#   - 데이터 가공(Data Manipulation)
#   - 데이터 핸들링(Data Handling)
#   - 데이터 랭글링(Data Wrangling)
#   - 데이터 먼징(Data Munging)

# 기호
# %>%  : 파이프 연산자(pipe operator) : Ctrl + Shift + m
# %in% : 매칭 확인
# 

library(dplyr)

exam <- read.csv("csv_exam.csv")
exam

# 파이프 연산자(pipe operator) : Ctrl + Shift + m (%>%) 
# exam을 filter() 함수에 연결

# 파이프 연산자를 쓰지 않고 처리
# 첫 번째 파라미터에 데이터를 전달
filter(exam, class == 1)

# exam에서 class가 1인 경우만 추출하여 출력
exam %>% filter(class == 1)

# exam에서 class가 2인 경우만 추출하여 출력
exam %>% filter(class == 2)

# exam에서 class가 1이 아닌 경우만 추출하여 출력
exam %>% filter(class != 1)

# exam에서 class가 1이거나 2인 경우 아닌 경우만 추출하여 출력
exam %>% filter(class == 1 | class == 2)

# exam에서 class가 1이면서 2인 경우 : 없다
exam %>% filter(class == 1 & class == 2)

# 과락 : 60점 미만이 한 과목이라도 있으면
# OR : |
exam %>% filter(math < 60 | english < 60 | science < 60)

# 우수 : 모든 과목이 70점 이상인 경우
# AND : &
exam %>% filter(math >= 70 & english >= 70 & science >= 70)

# 모든 과목이 70점 이상인 경우를 제외한 학생
# NOT : !
exam %>% filter(!(math >= 70 & english >= 70 & science >= 70))
exam %>% filter(math < 70 | english < 70 | science < 70)

# class(1, 3, 5)에 해당하는 학생
exam %>% filter(class == 1 | class == 3 | class == 5)
exam %>% filter(class %in% c(1,3,5))
filter(exam, class %in% c(1,3,5))

# class(1, 3, 5)에 해당하는 학생의 수는?
ex135_cnt <- filter(exam, class %in% c(1,3,5))
nrow(ex135_cnt)   # row : 12
length(ex135_cnt) # column : 5
ncol(ex135_cnt)   # column : 5
ex135_dim <- dim(ex135_cnt)    # 12 5
ex135_dim[1] # 12 행
ex135_dim[2] # 5 열