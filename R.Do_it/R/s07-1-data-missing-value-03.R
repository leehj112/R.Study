# 07장 데이터 정제
# - 빠진 데이터, 이상 데이터 제거하기

# 07-1 빠진 데이터를 찾아라-결측치 정제하기

# 
library(dplyr)

exam <- read.csv("csv_exam.csv")
exam

# 3,8,15 행의 math에 NA 할당
exam[c(3,8,15), "math"] <- NA
exam[c(3,8,15),]

# math 평균 산출
exam %>% summarise(mean_math=mean(math)) # NA

exam %>% summarise(mean_math=mean(math, na.rm=T))     # 55.23529
exam %>% summarise(sum_math=sum(math, na.rm=T))       # 939
exam %>% summarise(median_math=median(math, na.rm=T)) # 50

# 평균, 합계, 중앙값 산출
exam %>% summarise(mean_math=mean(math, na.rm=T),    # 55.23529  
                   sum_math=sum(math, na.rm=T),       # 939
                   median_math=median(math, na.rm=T)) # 50

# 결측치를 제외하고 math 평균 산출
mean(exam$math)  # NA
mean(exam$math, na.rm=T)  # 55.23529

# NA인 math의 값을 평균값으로 대체
exam[c(3,8,15),]

exam$math <- ifelse(is.na(exam$math), mean(exam$math, na.rm=T), exam$math)

#
df_math <- exam[is.na(exam$math), "math"]
df_math
class(df_math)
exam[is.na(exam$math), "math"] <- mean(exam$math, na.rm=T)

exam[c(3,8,15),]

table(is.na(exam$math)) # FALSE 20, TRUE는 없음(결측치 없음)
mean(exam$math) # 55.23529
exam