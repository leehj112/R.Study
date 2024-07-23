# 기본함수

# 함수 도움말
# help(함수명)
# ?함수명
help(sum)
?sum

# args(함수명)
args(sum)

# sum() 인자의 값을 모두 더한 결과를 리턴
sum(1,3,5,7,9) # 25

# NA가 있으면 연산 결과는 NA
sum(2,4,6,8, NA) # NA
sum(2,4,6,8, NA, na.rm=F) # NA

# NA를 제외하고 연산
sum(2,4,6,8, NA, na.rm=T) # 20

# 함수 예제
# example(함수명)
example(sum)

sum(1:10)      # 55 <- 1,2,3, ... 9, 10
sum(1:5, 6:10) # 55 <- 1,2,3, ... 9, 10