# 요인형(Factor)
# 같은 성격의 값의 목록을 범주로 갖는 벡터 자료
#
# [유형]
# nominal: 순서가 없음, 알파벳 순서로 정렬
# ordinal:  순서가 있음, 사용자가 지정한 순서

# 벡터
gender <- c("woman", "man", "woman", "woman", "man", "man", "man")

# 요인형 : factor nominal
# 벡터를 요인형을 변환
# default : 알파벳 순서로 정렬되는 요인형
nominal_gender <- as.factor(gender)
nominal_gender # Levels: man woman

# 빈도수 : 수치형
table(nominal_gender) # man 4, woman 3

# 빈도수 : 그래프
plot(nominal_gender)

# mode(): 자료형
mode(nominal_gender)  # numeric

# class() 자료형
class(nominal_gender) # factor