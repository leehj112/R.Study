# 데이터 입출력
# scan() : 키보드 입력(CLI)
# edit() : 데이터프레임 입력(GUI)

# 키보드 입력
# 아무것도 입력하지 않고 Enter를 치면 입력 종료

# 숫자 입력 
# 에러: 숫자를 입력하지 않고 문자형을 입력하면 에러 발생
# scan()은 'a real'를 입력받아야 하는데, '...'를 받았습니다
num <- scan() # 벡터
num
mode(num) "numeric"
sum(num)


# 문자입력
help(scan)
name <- scan(what=character())
name
mode(name) # "character"

# GUI 편집기 : edit() 함수
df <- data.frame() # 빈 데이터 프레임 생성
df

# 빈 데이터프레임
df <- edit(df)
df

# 데이터를 가지고 있는 데이터프레임을 편집
df <- edit(df)
df