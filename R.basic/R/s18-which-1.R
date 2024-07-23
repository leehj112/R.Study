# which 문
# 특정 데이터를 선택
# 조건식에 만족하는 결과가 참인 위치를 리턴

no <- seq(10,50,10)
no
name <- c("홍", "이", "박", "최", "김")
score <- seq(60,100,10)

exam <- data.frame(학번=no, 이름=name, 성적=score)
exam

exam$이름
kim <- which(exam$이름 == '김')
kim # 5
exam[kim,]         # 50   김  100
exam[kim,c(1,2,3)] # 50   김  100