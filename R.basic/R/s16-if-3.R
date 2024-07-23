# if문

score <- 85
grade <- 'D'

if(score >= 90) {
  grade = 'A'
} else if(score >= 80) {
  grade = 'B'
} else if(score >= 70) {
  grade = 'C'
} else {
  grade = 'D'
}

cat('당신의 점수는:', score)
cat('당신의 등급은:', grade)