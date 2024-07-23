# 07장 데이터 정제
# - 빠진 데이터, 이상 데이터 제거하기

# 07-2 이상한 데이터를 찾아라! - 이상치(outlier) 정제하기
# 극단적인 값: 너무 작거나 너무 큰 값으로 논리적으로 판단

# 패키지 설치
install.packages("ggplot2")
library(ggplot2)

install.packages("dplyr")
library(dplyr)

#
mpg <- as.data.frame(ggplot2::mpg)
boxplot(mpg$hwy)
boxplot(mpg$hwy)$stats # 5가지 통계치 값

summary(mpg$hwy)

# 12~37을 벗어나면 NA 할당
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)

# 결측치 확인
table(is.na(mpg$hwy)) # TRUE: 3

# 평균값 : drv 그룹핑
mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy, na.rm=T))


# 상자그림 - 집단 간 분포 차이 표현하기 
ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()