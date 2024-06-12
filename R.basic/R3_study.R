
## while문 
# while난수 
i<-100
while(i>0.01){
  i <- i-runif(1,min=-0.001,max=0.01)
  cat("\n",i) 
}


###파일 읽기,쓰기 
m <- matrix(1:15, ncol=3, byrow = T)
m2 <- data.frame(m)
colnames(m2)
paste0("v", 1:3) 
m2

"C:\R.B"
getwd()
setwd("C:\\R.B")
getwd()

m2 
write.csv(m2,"m2.csv", row.names = F)  
aaa<-read.csv("m2.csv") 
aaa
dim(aaa) #5행 4열


save(m2,file="m2.RData") 
load("m2.RData") 
m2 


# list 
lista<-list()
lista[[1]] <- m2 
lista

lista[[2]] <- c(1,2,3)
lista[[3]] <- c("a","b","c")
lista[[2]][1:3]

lista[[1]]

lista[[1]][1,]
###################
aa<-lista[[1]]
aa[1,]

save(lista,file="m2.RData") 
load("m2.RData")
lista # list저장 

m <- matrix(1:15, ncol=3, byrow = T)
m[,1]<-as.character(m[,1])
m <- data.frame(m)
str(m)


for(i in 1:ncol(m)){
  as.numeric(m[,i])
}
str(m)

