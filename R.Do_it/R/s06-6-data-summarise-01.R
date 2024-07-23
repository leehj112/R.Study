# 06장 자유자재로 데이터 가공하기
# 06-6 요약하기
# summarise(), group_by()
# 
# summarise() 사용 함수
#   - mean() 평균
#   - sd() 표준편차
#   - sum() 합계
#   - median() 중앙값
#   - min() 최솟값
#   - max() 최대값
#   - n() 빈도

library(dplyr)

exam <- read.csv("csv_exam.csv")
exam

# 전체 수학 평균이 새로운 칼럼(mean_math)에 추가
mean(exam$math) # 57.45
exam %>% mutate(mean_math=mean(math))

# 집단별로 요약
?summarise
exam %>% summarise(mean_math=mean(math)) # 57.45

# 그룹단위 집단별 요약
exam %>%
  group_by(class) %>%                 # class 별
  summarise(mean_math=mean(math),     # math 평균
            sum_math=sum(math),       # math 합계
            median_math=median(math)) # math 중앙값

# 그룹단위 집단별 요약
exam %>%
  group_by(class) %>%                 # class 별
  summarise(mean_math=mean(math),     # math 평균
            sum_math=sum(math),       # math 합계
            median_math=median(math), # math 중앙값
            n = n())                  # 학생수(빈도수)

# 데이터프레임의 전체 요약
summary(exam)