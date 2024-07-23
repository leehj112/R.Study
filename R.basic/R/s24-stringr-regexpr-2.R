# 정규표현식
# help(str_extract)
# str_extract(string, pattern, group = NULL)
# 문자열에서 특정한 형태의 패턴을 찾음

s1 <- "NAME(홍길동), TEL(010-1234-3578), EMAIL(Abc99@ysit.ac.kr)"

str_extract(s1, "[가-힣]{2,4}") # "홍길동"
str_extract(s1, "[0-9]{3}-[0-9]{4}-[0-9]{4}") # "010-1234-3578"
str_extract(s1, "[A-Za-z0-9]{1,}@[a-z.]{1,}") # "abc@ysit.ac.kr"



