# 05장
# 데이터 분석 기초!
# - 데이터 파악하기, 다루기 쉽게 수정하기
# 05-3 파생변수 만들기

# qplot() 함수 사용을 위해
library(ggplot2)

# 
df <- data.frame(var1 = c(4,3,9), var2 = c(2,6,1))
df

# 새로운 칼럼 추가 : 합
df$var_sum <- df$var1 + df$var2
df

# 새로운 칼럼 추가 : 평균
df$var_mean <- (df$var1 + df$var2) / 2
df

###################################################
# 고속도로 연비
mpg <- as.data.frame(ggplot2::mpg)
mpg

# 통합연비
mpg$total <- (mpg$cty + mpg$hwy) / 2
head(mpg)

# 통합연비 요약
summary(mpg$total)

# 통합연비 히스토그램
hist(mpg$total)

# 조건문을 활용해 파생변수 만들기
mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")
head(mpg, 20)

# 빈도표 : test
table(mpg$test) # fail 105, pass 128 
qplot(mpg$test) # 막대 그래프 표시

# 등급 칼럼 추가
# A : 30이상
# B : 20이상
# C : 20미만
mpg$grade <- ifelse(mpg$total >= 30, "A", ifelse(mpg$total >= 20, "B", "C"))
head(mpg, 20)
table(mpg$grade) # A:10, B:118, C:106 
qplot(mpg$grade)

# A, B, C, D 등급 부여
mpg$grade2 <- ifelse(mpg$total >= 30, "A", 
                     ifelse(mpg$total >= 25, "B",
                            ifelse(mpg$total >= 20, "C", "D")))

head(mpg, 20)
table(mpg$grade2) # A:10, B:118, C:106 
qplot(mpg$grade2)