#09_Khushbu_Gupta
#solve transportation problem in which cell entries represents unit costs using R pro
#                 customer 1      customer 2       customer 3   customer 4  supply
#supplier 1           10            2                 20            11       15
#supplier 2           12            7                 9             20       25     
#supplier 3           4             14                16            18       10
#Demand               5             15                15            15
#Import lpslove package

library(lpSolve)
      


#SET TRANSPORTATION COSTS MATRIX
costs<- matrix(c(10,2,20,11,
               12,7,9,20,
               4,14,16,18), nrow=3, byrow = TRUE)

colnames(costs)<-c("customer 1","customer 2","customer 3","customer 4")
rownames(costs)<-c("supplier 1 ","supplier 2" ,"supplier 3" )

row.signs<-rep("<=",3)

row.rhs<-c(15,25,10)

col.signs<-rep(">=",4)

col.rhs<-c(5,15,15,15)

tc<-lp.transport(costs,"min",row.signs,row.rhs,col.signs,col.rhs)

lp.transport(costs,"min",row.signs,row.rhs,col.signs,col.rhs)$solution

print(tc)





