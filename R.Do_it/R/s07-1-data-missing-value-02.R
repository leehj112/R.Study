# 07장 데이터 정제
# - 빠진 데이터, 이상 데이터 제거하기

# 07-1 빠진 데이터를 찾아라-결측치 정제하기

# 
library(dplyr)

#
df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
df

# 결측치 확인 : score
df %>% filter(is.na(score))  # score가 NA인 데이터만 출력
df %>% filter(!is.na(score)) # score가 NA가 아닌 데이터만 출력
df %>% filter(is.na(score) != TRUE) # score가 NA가 아닌 데이터만 출력

# 결측치 제거 : score
df_nomiss <- df %>% filter(is.na(score) != TRUE)
mean(df_nomiss$score) # 4
sum(df_nomiss$score)  # 16

# 결측치 제거 : score, sex
df_nomiss <- df %>% filter(is.na(score) != TRUE & is.na(sex) != TRUE)
mean(df_nomiss$score) # 4.333333
sum(df_nomiss$score)  # 13

# 결측치 제거하고 결과를 리턴
# na.omit() 
df_nomiss2 <- na.omit(df)
df_nomiss2
mean(df_nomiss2$score) # 4.333333
sum(df_nomiss2$score)  # 13