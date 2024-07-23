# 08장 그래프 만들기
# 08-3 막대 그래프 - 집단 간 차이 표현하기 : 
# geom_col()
# geom_bar()

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

# 고속도로 연비(hwy)
df_mpg <- mpg %>% 
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy))

df_mpg

# geom_col() : 막대 그래프
# x축(알파벳 순) : 4, f, r 
ggplot(data = df_mpg, aes(x = drv, y = mean_hwy)) + geom_col()

# reorder : 막대 크기 순, 마이너스(+)는 오름차순
ggplot(data = df_mpg, aes(x = reorder(drv, mean_hwy), y = mean_hwy)) + geom_col()

# reorder : 막대 크기 순, 마이너스(-)는 내림차순
ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy)) + geom_col()

# 빈도 막대 그래프
ggplot(data = mpg, aes(x = drv)) + geom_bar()

ggplot(data = mpg, aes(x = hwy)) + geom_bar()