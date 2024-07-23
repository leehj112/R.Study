# 08장 그래프 만들기
# 08-3 막대 그래프 - 집단 간 차이 표현하기 : 
# geom_col()
# geom_bar()
# geom_line()

# 패키지 설치
install.packages("ggplot2")
library(ggplot2)

install.packages("dplyr")
library(dplyr)

# 데이터셋 
# displ : 배기량
economics <- as.data.frame(ggplot2::economics)
View(economics)
dim(economics) # 574   6

# geom_line()
# 년도별 실업차 추이
ggplot(data=economics, aes(x=date, y=unemploy)) + geom_line()