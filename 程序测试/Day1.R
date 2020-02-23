
data <- data.frame(c1=c(1,2,-4),c2=1:3,c3=TRUE,c4='123',stringsAsFactors = F)
#一、数据类型
##1、查看数据类型：class(x);mode(x);typeof(X);
sapply(data,class)
sapply(data,mode)
sapply(data,typeof)
####精度上，typeof>class>mode

##2、判断数据类型
c4 <-'123'
is.numeric(c4)
is.character(c4)

##3、数据类型转换
c4 <- as.numeric(c4)
is.numeric(c4)

#二、数据结构：向量、矩阵、数据框、列表、数组
##1、向量
###1.1向量的创建
####直接创建向量
x1 <- 1:5#创建数值型向量
x2 <- TRUE
x3 <- 'A'

####c函数创建向量
x1 <- c(1,3,4,5,6)

####seq函数创建（等差数列）
x4 <- seq(1,9,by=2)   #by是步长，length.out是数组个数

####rep创建重复序列向量
x5 <- rep(1:4,3)
x6 <- rep(c(3,2),c(3,2))
x7 <- rep(c(3,2),each = 2 , length.out=3)
x8 <- rep(c(3,2),each = 2 , times = 3)

###1.2向量的索引
ve <- 1:6
ve[2]#从1开始
ve[1:3]
ve[-6]  #删除索引为6
ve[-c(2,4)]

####逻辑索引

ve[c(TRUE,FALSE,TRUE,FALSE,FALSE,TRUE,TRUE)] #返回对应位置为TRUE的元素

####名称索引
names(ve) <- c('one','two','three','four','five','six')
ve[c('three')]

####wich函数
which(ve==1| ve == 3)
which.max(ve)

####subset函数索引
subset(ve,ve>1 &ve <4)

match(ve,c(3,6,7))  #函数match返回ve中每个元素在c向量中对应的索引位置，如果不存在，就会返回NA

###1.3向量的编辑
ve1 <- c(ve,c(7,8)) #向量追加新元素
ve2 <- append(ve,7)
ve3 <- append(ve,5.5,5) #在第5个元素后面追加5.5

####1.4向量排序

x <- c(1,3,6,3,2,4,5)
x1 <- sort(x,decreasing = FALSE)  #是否升序或降序
sort(x,decreasing = TRUE)
x2 <- rev(x1)   #反转

x3 <- c('b','a','c')
sort(x3)

x4 <- c(1,3,6,3,2,4,5,NA)
sort(x4,na.last = TRUE) #保留NA值，并排在最后
