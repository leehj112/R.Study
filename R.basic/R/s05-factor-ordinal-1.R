# 요인형(Factor)
# 같은 성격의 값의 목록을 범주로 갖는 벡터 자료
#
# [유형]
# nominal: 순서가 없음, 알파벳 순서로 정렬, as.factor()
# ordinal:  순서가 있음, 사용자가 지정한 순서, factor()

# 벡터
gender <- c("woman", "man", "woman", "woman", "man", "man", "man")

# 도움말
?factor

# 요인형 : factor ordinal
# 벡터를 요인형을 변환
# factor(x, levels, ordered)
ordinal_gender <- factor(gender, levels=c("woman", "man"), ordered=TRUE)
ordinal_gender # Levels: woman < man


# 빈도수 : 수치형
table(ordinal_gender) # woman 2, man 4

# 빈도수 : 그래프
plot(ordinal_gender)

# mode(): 자료형
mode(ordinal_gender)  # numeric

# class() 자료형
class(ordinal_gender) # "ordered" "factor"

# 차트 그리기
nominal_gender <- as.factor(gender)

par(mfrow=c(1,2))
plot(nominal_gender)
plot(ordinal_gender)
