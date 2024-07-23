# 05장
# 데이터 분석 기초!
# - 데이터 파악하기, 다루기 쉽게 수정하기
# 05-2 변수명 바꾸기

# dplyr 패키지
# 데이터프레임 자료구조를 갖는 정형화된 데이터를 처리하는데 적합한 패키지
# 데이터를 원하는 형태로 가공 할 때 사용
install.packages("dplyr")
library(dplyr)
help(dplyr)

# 데이터프레임 생성
df_raw <- data.frame(var1 = c(1,2,1), var2 = c(2,3,2))
df_raw

# 복사본 : 새로운 데이터프레임
df_new <- df_raw

# 변수명 : 칼럼명 변경
# rename() 함수: dplyr 패키지
help(rename)
# 컬럼명 변경: var2 -> v2
df_new <- rename(df_new, v2=var2)
df_new # 사본의 컬럼명 변경

df_raw # 원본은 변경되지 않음