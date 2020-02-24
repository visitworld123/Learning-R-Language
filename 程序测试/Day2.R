#矩阵
x1 <- seq(1:10)
x2 <- matrix(x1,nrow=5,ncol=2, byrow =T,dimnames = list(c('r1','r2','r3','r4','r5'),c('c1','c2'))) #按行填充参数byrow
#dimnames改变行列的名字

##创建对角矩阵
diag(x1)

##创建单位矩阵
x3 <- rep(1,5)
diag(x3)

##单位矩阵索引
x2[4,2]
x2['r4','c2'] = 0 #通过属性名称索引
##通过赋值号‘=’进行元素修改
##矩阵合并
my <- matrix(c(11,12,3,14),nrow = 2, ncol = 2,dimnames = list(c('r6','r7')))
al <- rbind(x2,my)   #按行合并/cbind为按列合并
##转置
t(al)

#数组
my_array <- array(c(1:30),c(2,5,3))
##索引
my_array[2,2,3]

#数据框
id <- c(1,2,3,4,5)
score <- c(98,90,78,54,89)
names <- c('JIM','JACK','ROSE','RED','TIM')
my_fram <- data.frame(a = id, b = score , c = names)
##索引
my_fram[,'b']   #所有行，b列
#列表
my_list <- list(a = id,b = score , c = names)
##索引
my_list$b
length(my_list)   #返回列表中有几个成分
length(my_list$a)



