# 09장 데이터 분석 프로젝트
#  - 한국인의 삶을 파악하라!

#### 아래 링크를 클릭해 한국복지패널데이터 파일을 다운로드하세요.
# [Koweps_hpc10_2015_beta1.sav](https://bit.ly/Koweps_hpc10_2015_v2)   

install.packages("foreign")  # foreign 패키지 설치

library(foreign)             # SPSS 파일 로드
library(dplyr)               # 전처리
library(ggplot2)             # 시각화
library(readxl)              # 엑셀 파일 불러오기

#
# 데이터 불러오기
raw_welfare <- read.spss(file = "../data/Koweps_hpc10_2015_beta1.sav",
                         to.data.frame = T)

# 복사본 만들기
welfare <- raw_welfare

welfare <- rename(welfare,
                  sex = h10_g3,            # 성별
                  birth = h10_g4,          # 태어난 연도
                  marriage = h10_g10,      # 혼인 상태
                  religion = h10_g11,      # 종교
                  income = p1002_8aq1,     # 월급
                  code_job = h10_eco9,     # 직종 코드
                  code_region = h10_reg7)  # 지역 코드

# 결측치 처리
# 이상치 결측 처리
welfare$sex <- ifelse(welfare$sex == 9, NA, welfare$sex)

# 성별 항목 이름 부여
welfare$sex <- ifelse(welfare$sex == 1, "male", "female")

# 이상치 결측 처리
welfare$income <- ifelse(welfare$income %in% c(0, 9999), NA, welfare$income)

#################################################################
#### 09-3 ####
# 나이와 월급의 관계 - 몇 살 때 월급을 가장 많이 받을까?

## -------------------------------------------------------------------- ##
class(welfare$birth)
summary(welfare$birth)
qplot(welfare$birth)

# 이상치 확인
summary(welfare$birth)

# 결측치 확인
table(is.na(welfare$birth))

# 이상치 결측 처리
welfare$birth <- ifelse(welfare$birth == 9999, NA, welfare$birth)
table(is.na(welfare$birth))


## -------------------------------------------------------------------- ##
# 2015년 기준 나이
welfare$age <- 2015 - welfare$birth + 1
summary(welfare$age)
qplot(welfare$age)


## -------------------------------------------------------------------- ##
age_income <- welfare %>%
  filter(!is.na(income)) %>%
  group_by(age) %>%
  summarise(mean_income = mean(income))

head(age_income)

ggplot(data = age_income, aes(x = age, y = mean_income)) + geom_line()