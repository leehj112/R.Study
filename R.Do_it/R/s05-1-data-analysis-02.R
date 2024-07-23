# 05장
# 데이터 분석 기초!
# - 데이터 파악하기, 다루기 쉽게 수정하기

# 패키지 설치
install.packages("ggplot2")
library(ggplot2)

# mpg 데이터 파악하기
# 미국 차량 배기량, 연비 데이터
# ggplo2의 mpg 데이터를 데이터 프레임 형태로 불러오기
# manufacturer: 제조 회사
# model: 모델
# displ: 배기량
# year: 생산연도
# cyl: 실린더 갯수
# trans: 변속기
# drv: 구동방식
# cty: 도시연비
# hwy: 고속도로 연비
# fl: 연료 종류
# class: 자동차 종류
mpg <- as.data.frame(ggplot2::mpg)
View(mpg)

head(mpg)
dim(mpg)     # 234  11
summary(mpg) # 요약 통계량 출력

# Fuel economy data from 1999 to 2008 for 38 popular models of cars
# 연비 : 갤런당 몇 마일 주행?, 도시연비, 고속도로 연비
help(mpg)

# 도시 평균 연비
mean(mpg$cty)           # 16.85897
round(mean(mpg$cty), 2) # 16.86

# 고속 도로 평균 연비
round(mean(mpg$hwy), 2) # 23.44