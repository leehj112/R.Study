# 07장 데이터 정제
# - 빠진 데이터, 이상 데이터 제거하기

# 07-1 빠진 데이터를 찾아라-결측치 정제하기


df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
df

# NA : Not a Available
is.na(df)               # 결측치 확인 : NA는 TRUE
table(is.na(df))        # 결측치 빈도 출력 : FALSE 8, TRUE 2

# sex 결측치 빈도 출력
is.na(df$sex)        # FALSE FALSE  TRUE FALSE FALSE
table(is.na(df$sex)) # FALSE 4, TRUE 1    

# score 결측치 빈도 출력
is.na(df$score)        # FALSE FALSE FALSE FALSE  TRUE
table(is.na(df$score)) # FALSE 4, TRUE 1

# NA 포함되어 있으면 집계가 되지 않는다.
df$score
mean(df$score)  # 평균 산출 : NA
sum(df$score)   # 합계 산출 : NA

# 결측치를 제거하고 계산 : na.rm=T
mean(df$score, na.rm=T)  # 평균 산출 : 4
sum(df$score, na.rm=T)   # 합계 산출 : 16
