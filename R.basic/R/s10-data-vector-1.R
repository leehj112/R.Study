# Vector
#   - 1차원 배열
#   - 같은 자료형
#   - 첨자(index)는 1부터 시작
#   - 슬라이스: 시작:종료, 시작인덱스와 종료인덱스가 포함

# 같은 자료형으로 변환
# 문자열이 포함되어 있으면 숫자도 문자로 변환
cm1 <- c(1,2,3,'A')
cm1 #  "1" "2" "3" "A"

# 정수, 실수 -> 실수
cm2 <- c(1L, 2L, 3)
cm2
is.double(cm2) # TRUE

# combine value: 여러개의 값
# c(값, 값, ...)
# c(시작값:종료값)
c1 <- c(1,2,3,4,5) # double(실수)
c2 <- c(1:5)       # integer(정수)
cn <- c(1L, 2L, 3L, 4L, 5L) # integer

is.double(c1)  # TRUE
is.double(c2)  # FALSE
is.integer(c2) # TRUE
is.integer(cn) # TRUE

# sequence value: 연속된 값
# seq(시작값, 종료값, 증가값)
s0 <- seq(1,10)   # 증가값을 생략하면 1
s1 <- seq(1,10,1)
s2 <- seq(1,10,2)
s3 <- seq(2,10,2)

# replicate value: 반복
# rep(값, 반복횟수)
r1 <- rep(3,5)   # 3 3 3 3 3
r2 <- rep(2:6,2) # 2 3 4 5 6 2 3 4 5 6

r3 <- rep(c('a','b','c'), 3)
r3 # "a" "b" "c" "a" "b" "c" "a" "b" "c"

# 결과: 1 2 3 1 2 3 1 2 3
r4 <- rep(1:3, 3)     # int
r5 <- rep(c(1:3), 3)  # int
r6 <- rep(c(1,2,3),3) # num

r7 <- rep(seq(2,8,2), 2)
r7 # 2 4 6 8 2 4 6 8

# 최종결과
cr1 <- c(rep(seq(2,8,2),2), 10)
cr1 # 2  4  6  8  2  4  6  8 10

# 위 최종결과를 분해
cx1 <- seq(2,8,2)
cx2 <- rep(cx1, 2)
cx3 <- c(cx2, 10)
cx3 # 2  4  6  8  2  4  6  8 10

