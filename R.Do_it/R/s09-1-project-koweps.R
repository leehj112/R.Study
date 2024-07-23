# 09장 데이터 분석 프로젝트
#  - 한국인의 삶을 파악하라!

#### 아래 링크를 클릭해 한국복지패널데이터 파일을 다운로드하세요.
# [Koweps_hpc10_2015_beta1.sav](https://bit.ly/Koweps_hpc10_2015_v2)   

install.packages("foreign")  # foreign 패키지 설치

library(foreign)             # SPSS 파일 로드
library(dplyr)               # 전처리
library(ggplot2)             # 시각화
library(readxl)              # 엑셀 파일 불러오기

# 데이터 불러오기
raw_welfare <- read.spss(file = "./Koweps_hpc10_2015_beta1.sav",
                         to.data.frame = T)

# 복사본 만들기
welfare <- raw_welfare

head(welfare)
tail(welfare)
View(welfare)
dim(welfare)  # 16664   957
str(welfare)
summary(welfare)

welfare <- rename(welfare,
                  sex = h10_g3,            # 성별
                  birth = h10_g4,          # 태어난 연도
                  marriage = h10_g10,      # 혼인 상태
                  religion = h10_g11,      # 종교
                  income = p1002_8aq1,     # 월급
                  code_job = h10_eco9,     # 직종 코드
                  code_region = h10_reg7)  # 지역 코드

#### 09-2 ####
# 성별에 따른 월급 차이 - 성별에 따라 월급이 다를까!
# 1:남자, 2:여자
## -------------------------------------------------------------------- ##
welfare$sex
class(welfare$sex)
table(welfare$sex) # 1:7578, 2:9086

# 이상치 확인
table(welfare$sex)

# 이상치 결측 처리 : 9:무응답, 모름
welfare$sex <- ifelse(welfare$sex == 9, NA, welfare$sex)

# 결측치 확인
table(is.na(welfare$sex)) # FALSE: 16664

# 성별 항목 이름 부여
welfare$sex <- ifelse(welfare$sex == 1, "male", "female")
table(welfare$sex)
qplot(welfare$sex)

## -------------------------------------------------------------------- ##
welfare$income
class(welfare$income)
summary(welfare$income)
qplot(welfare$income)
qplot(welfare$income) + xlim(0, 1000)

# 이상치 확인
summary(welfare$income)

# 이상치 결측 처리
welfare$income <- ifelse(welfare$income %in% c(0, 9999), NA, welfare$income)

# 결측치 확인
table(is.na(welfare$income)) # FALSE:4620, TRUE:12044 

## -------------------------------------------------------------------- ##
# 성별로 평균 임금
sex_income <- welfare %>%
  filter(!is.na(income)) %>%
  group_by(sex) %>%
  summarise(mean_income = mean(income))

sex_income # female:163. male: 312.

ggplot(data = sex_income, aes(x = sex, y = mean_income)) + geom_col()