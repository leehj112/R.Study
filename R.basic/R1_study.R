a = 1
a <- 1
a <- 2
a


a == 1
a == 2
a != 1 # 반대 
a > 1
a < 1


a <- "abc"
abc <- 2     # 숫자형 
a <- "abc"   # 문자형 
a 

a <- 3
b <- "abcd" 
class(a) 
class(b)
a 
a2<-as.character(a) 
class(a2) 
a2 


a3 <- as.numeric(a2) 
class(a3) 
####

# vector = column 
a <- c(50, 20, 30) 
a[1] 
a[2]
a[3] 
b<- c(1,2,3) 
a + b 
a +1 
b*2

a<-c("aa","bb","cc")
a[1]
a[2]
a[3]
a[c(1,2)]
a[c(1,3)] 
a[c(1,2,3)]
a[c(3,2,1)]
a[c(1:3)]
a[1:3] 


1:3 ## ~부터 ~까지
1:10 
a[-1] 
a[-3]
a[-c(1,3)]
a[-c(1:2)]
-1:2


a[c(T,T,F)]

a[a == "aa"]


a <-1:100
a 
a %% 2
a[a %% 2 == 0] 
a[a %% 2 == 1] 

# vector = column
## ( ) <- 함수 의미 
## [] <- 방의미 
a<-c(50,20,30)
a[1]
a[2]
a[3]
b <- c(1,2,3)
a+b
a + 1
b * 2

a<- c("aa" ,"bb", "cc")
a[1]
a[2]
a[3]
a[c(1,2)]
a[c(1,3)]
a[c(1,2)]
a[c(1,3)]
a[c(1,2,3)]
a[c(3,2,1)]

a[1:3]
1:3 ## : ~부터 ~ 까지
1:10
a[-1]
a[-3]
a[-c(1,3)]
a[-c(-1:2)]
-1:2

a[c(T,T,F)]

a  == "aa"
a [a =="aa"]

a <- 1:100
a
a[a %% 2 == 0]
a[a %% 1 == 0]
