# [문제] 함수문제
# 구구단을 출력하는 함수를 만들고 
# 지정된 단의 범위를 출력하라.

# 구구단(시작단,종료단)
#   - 시작단: 출력할 시작단
#   - 종료단: 출력한 종료단
# 예시: 3단부터 7단까지 출력
#   구구단(3, 7)

multinine <- function(s, e) {
  for(n in s:e) { # s -> e
    cat('[', n, '] 단', '\n')
    for(m in 1:9) {
      cat(n, '*', m, '=', n * m, '\n')
    }
  }
}

multinine(5,2)

# multinine(2,2)
# multinine(3,7)