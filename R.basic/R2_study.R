# matrix
matrix(1:15,ncol=3, byrow= T) 

mdat <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE,# 3행 2열 
               dimnames = list(c("row1", "row2"),
                               c("c.1", "c.2", "c.3")))
mdat  # matrix 설정 



m <- matrix(1:15, ncol=3, byrow = T)
m
m[2,2] 
m[3,3]
m[1,c(1,2,3)] 
m[1, ]
### 
m[,1] # 앞 행에 대한 정보, 뒤 열에 대한 정보 
m[-1,]
m[,-1]
m[c(1,3),]
m[-c(1,3),]
m[2:4, c(2,3)]

m2 <- data.frame(m) 
m2 
m[,1]<-as.character(m[,1]) 
m
m
str(m2) 
m2[,1]<- as.character(m2[,1]) 
str(m2) 
m2 
m2[,1]
m2[,3]
m2[,2]
m2$x4<-c(1,2,3,4,5) 
m2 

m3 <- as.matrix(m2)



# 성 별 남 여 
sex <- c("남","여","여","남") 
sex2<-ifelse(sex=="남",1,0) 
sex2

# cbind, rbind
cbind(m2,c(3,2,4,5,5)) # 열 기준 
rbind(m2,c(3,2,4,5))   # 행 기준 

cbind(m2,m2) 
rbind(m2,m2) 


# For문 
for (j in c(7,5,3,1)){
  print(j) 
}


for(i in 1:10){
  m2 <- rbind(m2,m2) 
}
dim(m2)
# 여러개 데이터 합칠때 혹은 묶을때 use 
# 10번 rbind 
# rbind(m2,m2) 데이터를 rbind(m2,m2) 시켜주면 계속 2배 

m3<-NULL
for(i in 1:10){
  m3 <- rbind(m3,m2)
  print(i)
  print(dim(m3)) 
}
dim(m3)
m3

# if문 
m3<- NULL
for(i in 1:10){
  
  if(i %% 2 ==0){
    next;
  }else{
    m3 <- rbind(m3,m2)
  }
  cat("\n",i)
}
dim(m3) 



