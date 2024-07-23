# 06장 자유자재로 데이터 가공하기
# 06-5 파생변수 추가하기
# mutate()

library(dplyr)

exam <- read.csv("csv_exam.csv")
exam

# 총합 변수 추가
# 컬럼 : total 추가
exam %>%
  mutate(total = math + english + science)

# 한 번에 여러 파생변수 추가
# 총합, 평균 추가
exam %>%
  mutate(total = math + english + science,
         mean = (math + english + science) / 3)

# 합격, 탈락 추가
exam %>%
  mutate(mean = (math + english + science) / 3) %>%
  mutate(test = ifelse(mean >= 60, "합격", "탈락"))

#
exam_test <- exam %>%
  mutate(mean = (math + english + science) / 3) %>%
  mutate(test = ifelse(mean >= 60, "합격", "탈락"))

# 빈도수: 탈락 4, 합격 16
table(exam_test$test)

# 
exam %>%
  mutate(mean = (math + english + science) / 3) %>%
  mutate(test = ifelse(mean >= 60, "합격", "탈락")) %>%
  select(test) %>%
  table() # select에서 선택한 test 변수로 빈도수 구함
