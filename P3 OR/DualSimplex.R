#09_Khushbu_Gupta
#Max z=40x1+50x2                 
#subject to constraints
#2x1+3x2<=3
#8x1+4x2<=3
#x1,x2>=0
#Import lpslove packagea

library(lpSolve)
      
f.obj<-c(40,50)

#SET TRANSPORTATION COSTS MATRIX
f.con <- matrix(c(2,3,
                 8,4 ), nrow=2, byrow = TRUE)

f.dir<-c("<=",
         "<=")

f.rhs<-c(3,5)

lp("max", f.obj, f.con, f.dir, f.rhs)

lp("max", f.obj,f.con,f.dir,f.rhs)$solution


lp("max",f.obj,f.con,f.dir,f.rhs, compute.sens = TRUE)$sens.coef.from

lp("max", f.obj,f.con,f.dir,f.rhs, compute.sens = TRUE)$sens.coef.to

lp("max", f.obj,f.con,f.dir,f.rhs, compute.sens = TRUE)$duals

lp("max", f.obj,f.con,f.dir,f.rhs, compute.sens = TRUE)$duals.from
lp("max", f.obj,f.con,f.dir,f.rhs, compute.sens = TRUE)$duals.to






