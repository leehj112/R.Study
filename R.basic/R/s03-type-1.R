# 자료형
# 숫자형(Numeric): 0, 1234, -1234
# 문자형(String) : "a", "abc", 'ABC'
# 논리형(Logical) : TRUE, FALSE, T, F
#
# 결측: NA(Not a Available), NaN(Not a Number)
# 무한값: Inf, -Inf
# 정의되지 않은 값: NULL

# 숫자형(Numeric)
n <- 22
is.numeric(n) # TRUE

# 문자형(String)
# 문자열 안에 포함된 따옴표는 데이터 간주한다.
s1 <- "홍길동"  # 큰 따옴표
s2 <- '홍사덕'  # 작은 따옴표
s3 <- "홍길동은 '홍사덕'의 조상이다." # 따옴표 혼합가능
s4 <- '홍사덕은 "홍길동"의 후손이다.'
is.character(s1) # TRUE
is.character(s2) # TRUE
is.character(s3) # TRUE
is.character(s4) # TRUE

# 논리형(Logical) : 참, 거짓
# T:TRUE, F:FALSE
t1 <- TRUE 
t2 <- T
f1 <- FALSE
f2 <- F
is.logical(t1) # TRUE
is.logical(t1) # TRUE
is.logical(f1) # TRUE
is.logical(f1) # TRUE

# 자료형이 일치하지 않으면 FALSE
is.numeric("홍길동")
is.character(99)
is.logical(100)

# NA(Not a Available)
x <- NA
is.na(n)  # FALSE
is.na(s1) # FALSE
is.na(NA) # TRUE
is.na(x)  # TRUE

# NaN(Not a Number)
is.nan(n)  # FALSE
is.nan(t1) # FALSE
is.nan(s1) # FALSE
is.nan(x)  # FALSE

# 문자는 판단할 수 없다.
# 그러므로 숫자형으로 변환 후 판단
is.nan("홍길동") # FALSE
hn <- as.numeric("홍길동")   # NA
is.nan(as.numeric("홍길동")) # 강제형변환에 의해 생성된 NA 입니다 

is.nan(10)       # FALSE
is.nan(10L)      # FALSE

# NaN(Not a Number)
is.nan(NaN)  # TRUE
is.nan(Inf)  # FALSE
is.nan(-Inf) # FALSE

#
l <- 99       # 기본 : 실수형으로 처리
is.numeric(l) # TRUE
is.integer(l) # FALSE, 정수형은 아니다.
is.double(l)  # TRUE, 실수형

nl <- 99L      # 정수형
is.integer(nl) # TRUE

xl <- as.integer(l) # 형변환 : as.자료형(변수)
is.integer(xl) # TRUE