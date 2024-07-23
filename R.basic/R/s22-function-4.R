# 함수: function
#

# 함수정의
calc <- function(a, b, c) {
  d <- (a - b) * c
  return(d)
}

# 순서대로 인자가 전달
calc(10, 20, 4) # -40 <- (10 - 20) * 4

# 권고하지 않음
calc(c=4, 10, 20) # -40

# 가능하면 순서를 맞춰서 호출
calc(10, 20, c=4)     # -40
calc(a=10, b=20, c=4) # -40