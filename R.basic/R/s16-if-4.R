# if문
# 결과 <- ifelse(조건문, 참, 거짓)
# help(ifelse)
# ifelse(test, yes, no)
# Arguments
# test	
# an object which can be coerced to logical mode.
# 
# yes	
# return values for true elements of test.
# 
# no	
# return values for false elements of test.

?ifelse
score <- 75

guide <- ifelse(score >= 80, '합격', '불합격')

cat("당신의 시험에 '", guide, "' 하였습니다.", sep='')
