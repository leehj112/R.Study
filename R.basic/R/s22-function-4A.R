# 함수: function
#

# 함수정의
calc <- function(a, b) {
  d <- (a - b)
  return(d)
}

# 에러: 사용되지 않은 인자 (4)
# 함수(calc)는 인자를 2개 받을 수 있도록 정의 되어 있으므로
# 인자의 갯수가 일치하지 않으면 에러가 발생
calc(10, 20, 4) 
