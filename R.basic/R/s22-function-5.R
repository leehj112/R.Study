# 함수: function
#

# 함수정의 
# 기본값 지정 : c=1
calc <- function(a, b, c=1) {
  d <- (a - b) * c
  return(d)
}

# -40 : (a(10) - b(20)) * c(4)
calc(10, 20, 4) 

# c에 해당하는 값을 전달하지 않으면
# 기본값 1이 적용된다.
calc(10, 7)      # 3
calc(10, 7, c=1) # 3
