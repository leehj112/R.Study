# 07장 데이터 정제
# - 빠진 데이터, 이상 데이터 제거하기

# 07-2 이상한 데이터를 찾아라! - 이상치(outlier) 정제하기

# 패키지 설치
install.packages("ggplot2")
library(ggplot2)

# 1:남자, 2:여자, 3:?
outlier <- data.frame(sex=c(1,2,1,3,2,1), score=c(5,4,3,4,2,6))
outlier

# 빈도표
table(outlier$sex)
table(outlier$score)

# sex가 3이면 NA 할당
outlier$sex <- ifelse(outlier$sex == 3, NA, outlier$sex)
outlier

# score가 5보다 크면 NA 할당
outlier$score <- ifelse(outlier$score > 5, NA, outlier$score)
outlier

# 결측치를 제거하고 성별(sex)로 그룹핑하여 스코어(score) 평균 계산
# [주의] 칼럼 이름을 지정할 때 데이터프레임을 지정하면 안됨
# 오류 : mean(outlier$score)의 계산은 파이프로 연결된 데이터가 아니라
#        원래의 데이터프레임을 가지고 연산을 수행하여
#        원하는 결과가 나오지 않는다.
outlier %>%
  filter(!is.na(sex) & !is.na(score)) %>%
  group_by(sex) %>%
  summarise(mean_score = mean(outlier$score)) # 원래 데이터프레임을 사용하면 안됨

# 정상
outlier %>%
  filter(!is.na(sex) & !is.na(score)) %>%
  group_by(sex) %>%
  summarise(mean_score = mean(score))

