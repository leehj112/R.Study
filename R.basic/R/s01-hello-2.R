
# 데이터셋(dataset) 보기
data()

# 히스토그램 : 빈도수
# Flow of the River Nile
hist(Nile)

# 히스토그램 : 밀도
hist(Nile, freq=F) # F: FALSE

# 분포곡선(line)
lines(density(Nile))