#### 13-3 ####
# 상관분석 - 두 변수의 관계성 분석
# 상관분석(Correlation Analysis)
#   - 두 연속 변수가 서로 관련이 있는지 검정하는 통계 분석
#   - 상관계수(Correlation Coefficient)
#   - 0~1 사이의 값
#   - 1에 가까울 수록 관련성이 크다.
#   - 양수 : 정비례
#   - 음수 : 반비례
# 함수: cor.test()


## -------------------------------------------------------------------- ##
# 상관행렬(Correlation Matrix) 히트맵 만들기
# mtcats 데이터셋
#   - mpg: 연비
#   - cyl: 실린더 수
#   - wt: 무게

head(mtcars)
car_cor <- cor(mtcars)  # 상관행렬 생성
round(car_cor, 2)       # 소수점 셋째 자리에서 반올림해서 출력

install.packages("corrplot")
library(corrplot)

# 양수:파란색, 음수:빨간색
# 값: 원의 크기
corrplot(car_cor)

# 상관계수 : 숫자로 표현
corrplot(car_cor, method = "number")

# 색상 코드 팔렛트 이용
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))

corrplot(car_cor,
         method = "color",       # 색깔로 표현
         col = col(200),         # 색상 200개 선정
         type = "lower",         # 왼쪽 아래 행렬만 표시
         order = "hclust",       # 유사한 상관계수끼리 군집화
         addCoef.col = "black",  # 상관계수 색깔
         tl.col = "black",       # 변수명 색깔
         tl.srt = 45,            # 변수명 45도 기울임
         diag = F)               # 대각 행렬 제외
