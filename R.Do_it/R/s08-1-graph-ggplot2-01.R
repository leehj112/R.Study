# 08장 그래프 만들기
# 08-2 산점도 - 변수 간 관계 표현하기

# 패키지 설치
install.packages("ggplot2")
library(ggplot2)

install.packages("dplyr")
library(dplyr)

# 데이터셋 
# displ : 배기량
mpg <- as.data.frame(ggplot2::mpg)
View(mpg)
summary(mpg$displ)
summary(mpg$hwy)

# 배기량별 고속도로 연비
# x축 displ, y축 hwy로 지정해 배경 생성
ggplot(data = mpg, aes(x = displ, y = hwy)) # 

# 배경에 산점도 추가 : geom_point()
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()

# x축 범위 3~6으로 지정
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point() + xlim(3, 6)

# x축 범위 3~6, y축 범위 10~30으로 지정
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  xlim(3, 6) + 
  ylim(10, 30)