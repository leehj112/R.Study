#### 13-2 ####
# t 검정 - 두 집단의 평균 비교
# (변수 - 평균) / 표본의 표준편차
# class : 자동차 종류
# cty: 도시연비(city)
# fl: 연류 종류(fuel)
# 유의확률(p-value): 0.05(5%) 판단기준
#   - p-value가 0.05 미만이면 집단 간 차이가 통계적으로 유의하다.
# 

## -------------------------------------------------------------------- ##
# 평균 연비
# sample estimates:
#   - compact : 20.12766 
#   - suv: 13.50000 
mpg <- as.data.frame(ggplot2::mpg)

library(dplyr)
mpg_diff <- mpg %>% 
  select(class, cty) %>% 
  filter(class %in% c("compact", "suv"))

head(mpg_diff)
table(mpg_diff$class)

# T 검정 함수: t.test()
t.test(data = mpg_diff, cty ~ class, var.equal = T)
# 결과: p-value < 2.2e-16
# compact, suv 간 평균 도시연비 차이가 통계적으로 유의하다.

## -------------------------------------------------------------------- ##
# [예제2]
# 일반 휘발유와 고급 휘발유의 도시 연비 t 검정
# 도시 연비 차이가 통계적으로 유의한가?

mpg_diff2 <- mpg %>% 
  select(fl, cty) %>% 
  filter(fl %in% c("r", "p"))  # r:regular, p:premium

table(mpg_diff2$fl)

# T 검정 함수: t.test()
t.test(data = mpg_diff2, cty ~ fl, var.equal = T)

# 결과:
# p-value = 0.2875(28.75%)
# sample estimates:
# mean in group p: 17.36538  
# mean in group r: 16.73810 
# 실제로는 차이가 없는데 우연에 의해서 이런 차이가 관찰될 확률이 28.75%라는 의미이다.
# 결론: 일반 휘발유와 고급 휘발유를 사용하는 자동차 간 도시 연비 차이가
#       통계적으로 유의하지 않다.
