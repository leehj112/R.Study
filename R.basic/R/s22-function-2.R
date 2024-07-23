# 함수: function
#
# 사용자 정의 함수
# 함수이름 <- function(파라미터) {
#   명령문
#   return(리턴값)
# }

# 함수정의
add <- function(a, b) {
  c <- a + b
  return(c)
}

# 함수 호출
ab <- add(10, 20)
ab # 30
